#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <unistd.h>
#include <vector>

using namespace std;

// Lock Base Class
class Lock {
public:
  virtual void lock(int threadID){};
  virtual void unlock(int threadID){};
};

class FilterLock : public Lock {
public:
  vector<int> level;
  vector<int> victim;

  FilterLock(int numberOfThreads) {
    level.resize(numberOfThreads, 0);
    victim.resize(numberOfThreads);
  }

  // any thread would wait till either there is another thread at
  // it's level or if there is no other thread in any level above
  // it
  bool waitCondition(int threadID, int lev) {
    if (victim[lev] != threadID)
      return false;
    for (auto i = 0; i < level.size(); i++) {
      if (i == threadID)
        continue;
      if (level[i] >= lev)
        return true;
    }
    return false;
  }

  void lock(int threadID) {
    for (auto L = 1; L < level.size(); L++) {
      level[threadID] = L;
      victim[L] = threadID;
      while (waitCondition(threadID, L))
        ;
    }
  }
  void unlock(int threadID) { level[threadID] = 0; }
};

// Peterson Lock for two threads
class TwoThreadPetersonLock : public Lock {
public:
  vector<bool> flag;
  int victim;
  TwoThreadPetersonLock(int numberOfThreads) {
    flag.resize(numberOfThreads, false);
  }

  // thread will continue to wait till either it is replaced as
  // victim or till the other thread is not interested in the
  // critical section
  bool waitCondition(int threadID) {
    if (victim != threadID)
      return false;
    for (auto i = 0; i < flag.size(); i++) {
      if (i != threadID && flag[i])
        return true;
    }
    return false;
  }

  void lock(int threadID) {
    flag[threadID] = true;
    victim = threadID;
    while (waitCondition(threadID))
      ;
  }

  void unlock(int threadID) { flag[threadID] = false; }
};

// Peterson Tree Based Lock
class PTL : public Lock {
public:
  // tree of two thread peterson locks where the parent of the lock
  // at index i is the lock at index (i-1)/2
  vector<TwoThreadPetersonLock> lockTree;
  int threadCount;
  PTL(int numberOfThreads) {
    threadCount = numberOfThreads;
    for (auto i = 0; i < threadCount - 1; i++) {
      lockTree.push_back(TwoThreadPetersonLock(numberOfThreads));
    }
  }
  // aquire all the locks from leaf till the root
  void lock(int threadID) {
    int lockIndex = threadCount / 2 + threadID / 2 - 1;
    while (true) {
      lockTree[lockIndex].lock(threadID);
      if (lockIndex == 0)
        break;
      lockIndex = (lockIndex - 1) / 2;
    }
  }
  // unlock all the locks in the reverse order of aquiring
  // i.e. first unlock root and then proceed towards the leaves
  // this ensures fairness
  void unlock(int threadID) {
    int lockIndex = threadCount / 2 + threadID / 2 - 1;
    vector<int> lockIndexList;
    while (true) {
      lockIndexList.push_back(lockIndex);
      if (lockIndex == 0)
        break;
      lockIndex = (lockIndex - 1) / 2;
    }
    for (int i = lockIndexList.size() - 1; i >= 0; i--) {
      lockTree[lockIndexList[i]].unlock(threadID);
    }
    return;
  }
};

// function to get formatted time
string get_formatted_time() {
  char current_time[9];
  time_t now = time(0);
  tm *ltm = localtime(&now);
  sprintf(current_time, "%.2d:%.2d:%.2d", ltm->tm_hour, ltm->tm_min,
          ltm->tm_sec);
  return string(current_time);
}

// variables to be read from the input file
int n, k;

float lambda1, lambda2;

// total time spent waiting for to enter CS by all threads
long long totalWaitingTime, totalExitWaitingTime;

// The lock used to enter the critical section
Lock *Test;

// File into which the output is logged
FILE *outputFile;

void *testCS(void *param) {
  // id of the thread
  int id = *((int *)param);
  // declaring time measuring variables
  chrono::time_point<chrono::system_clock> enterTime, requestTime,
      exitRequestTime, exitTime;
  // random engine to generate random numbers
  default_random_engine generatorRem(random_device{}());
  default_random_engine generatorCS(random_device{}());
  // exponential deistribution
  exponential_distribution<double> distributionCS(1.0 / lambda1);
  exponential_distribution<double> distributionRem(1.0 / lambda2);

  for (auto i = 1; i <= k; i++) {
    // logging into log file
    fprintf(outputFile, "%d th CS Entry Request at %s by thread %d (mesg 1)\n",
            i, get_formatted_time().c_str(), id);
    requestTime = chrono::high_resolution_clock::now();
    // Enter Sequence for critical section
    Test->lock(id);
    // critical section
    enterTime = chrono::high_resolution_clock::now();
    auto duration =
        chrono::duration_cast<chrono::microseconds>(enterTime - requestTime);
    totalWaitingTime += duration.count();
    fprintf(outputFile, "%d th CS Entry at %s by thread %d (mesg 2)\n", i,
            get_formatted_time().c_str(), id);
    // simulating CS
    usleep(1000000 * distributionCS(generatorCS));
    // exit sequence from CS
    fprintf(outputFile, "%d th CS Exit Request at %s by thread %d (mesg 3)\n",
            i, get_formatted_time().c_str(), id);
    exitRequestTime = chrono::high_resolution_clock::now();
    Test->unlock(id);
    exitTime = chrono::high_resolution_clock::now();
    fprintf(outputFile, "%d th CS Exit at %s by thread %d (mesg 4)\n", i,
            get_formatted_time().c_str(), id);
    auto exitDuration =
        chrono::duration_cast<chrono::microseconds>(exitTime - exitRequestTime);
    totalExitWaitingTime += exitDuration.count();
    // simulating remainder section
    usleep(1000000 * distributionRem(generatorRem));
  }
}

void run(bool filterLock) {

  totalWaitingTime = 0;
  totalExitWaitingTime = 0;

  if (!filterLock) {
    cout << "PTL Stats" << endl;
    Test = new PTL(n);
    fprintf(outputFile, "PTL Output\n");
  } else {
    cout << "Filter Lock Stats" << endl;
    fprintf(outputFile, "Filter Lock Output\n");
    Test = new FilterLock(n);
  }

  pthread_attr_t attr;
  pthread_attr_init(&attr);
  pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);

  // Vectors of threads
  vector<pthread_t> threads(n);

  // Making ID vectors for threads
  vector<int> threadIDs(n);

  // launching the threads
  for (auto i = 0; i < n; i++) {
    threadIDs[i] = i;
    pthread_create(&threads[i], &attr, testCS, &threadIDs[i]);
  }

  // joining the threads
  for (auto i = 0; i < n; i++) {
    pthread_join(threads[i], NULL);
  }
  cout << "The average waiting time for threads to enter critial section = "
       << (totalWaitingTime + 0.0) / (n * k) << "us" << endl;
  cout << "The average waiting time for threads to exit critial section = "
       << (totalExitWaitingTime + 0.0) / (n * k) << "us" << endl;
}

int main() {
  fstream input_file;
  // Opening Input file
  input_file.open("inp-params.txt");
  // Taking in input
  input_file >> n >> k >> lambda1 >> lambda2;

  // output file
  outputFile = fopen("output-log.txt", "w");

  // run with filter lock
  run(true);
  // run with PTL
  run(false);
}