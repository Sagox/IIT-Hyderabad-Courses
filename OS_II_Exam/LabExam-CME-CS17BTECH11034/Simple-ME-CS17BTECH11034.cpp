#include <iostream>
#include <vector>
#include <fstream>
#include <unistd.h>
#include <string>
#include <time.h>
#include <chrono>     
#include <semaphore.h>
#include <random>

using namespace std;

// Initialising the input variables as global so that they can
// be viewed across threads
// 
int numberOfThreads, k, S, currentSection, numberOfThreadsInCurrentSection = 0;
float l1, l2, total_waiting_time = 0;

// This array of bools is used to check if the thread should wait on semaphore or
// the change of class
vector<bool> checker;

// function to get formatted time
string get_formatted_time() {
	char current_time[9];
	time_t now = time(0);
	tm *ltm = localtime(&now);
	sprintf(current_time, "%.2d:%.2d:%.2d", ltm->tm_hour, ltm->tm_min, ltm->tm_sec);
	return string(current_time);
}

// declaring the semaphores
sem_t rw_mutex, update_mutex, class_mutex;

// file to log into
FILE *pFile;

// declaring output/input files
fstream input_file;

// thread function
void *testCS(void *param) {
	int meSection;
	// declaring time measuring variables
	chrono::time_point<chrono::system_clock> enterTime, exitTime, requestTime;
	// random engine to generate random numbers
	default_random_engine generatorRem(random_device{}());
	default_random_engine generatorCS(random_device{}());
	// exponential deistribution
	exponential_distribution<double> distributionCS(1000/l1);
	exponential_distribution<double> distributionRem(1000/l2);
	// id of the thread
	int id = *((int*)param);
	for(auto i=0;i<k;i++) {
		// to get simple mutual exclusion uncomment below line and change the length
		// of the bool array to the number of threads
		// meSection = id + 1;
		meSection = id + 1;

		// logging into log file
		fprintf(pFile, "%d th CS request at %s by thread %d for session %d.\n", i, get_formatted_time().c_str(), id, meSection);

		requestTime = chrono::high_resolution_clock::now();

		// Enter Sequence for Critical section
		sem_wait(&rw_mutex);
		if(currentSection == 0 || currentSection != meSection) {
			if(checker[meSection-1])
			{
				sem_post(&rw_mutex);
				while(true)
				{
					sem_wait(&rw_mutex);
					if(currentSection == meSection){
						numberOfThreadsInCurrentSection++;
						break;
					}
					sem_post(&rw_mutex);
				}
				sem_post(&rw_mutex);
			}
			else
			{
				checker[meSection - 1] = true;
				sem_post(&rw_mutex);
				sem_wait(&class_mutex);
				sem_wait(&rw_mutex);
				checker[meSection - 1] = false;
				numberOfThreadsInCurrentSection = 1;
				currentSection = meSection;
				sem_post(&rw_mutex);

			}
		}
		else if(currentSection == meSection) {
			numberOfThreadsInCurrentSection++;
			sem_post(&rw_mutex);
		}
		

		// critical section
		enterTime = chrono::high_resolution_clock::now();
		auto duration = chrono::duration_cast<chrono::microseconds>(enterTime - requestTime);
		sem_wait(&update_mutex);
		total_waiting_time += duration.count();
		sem_post(&update_mutex);
		fprintf(pFile, "%d th CS entry at %s by thread %d for session %d.\n", i, get_formatted_time().c_str(), id, meSection);
		// simulating CS
		usleep(1000000*distributionCS(generatorCS));
		// exiting Critical section by sigalling semaphore rw_mutex
		

		exitTime = chrono::high_resolution_clock::now();
		fprintf(pFile, "%d th CS exit at %s by thread %d for session %d.\n", i, get_formatted_time().c_str(), id, meSection);

		sem_wait(&rw_mutex);
		numberOfThreadsInCurrentSection--;
		if(numberOfThreadsInCurrentSection == 0) {
			currentSection = 0;
			sem_post(&class_mutex);
		}
		sem_post(&rw_mutex);
		// simulating remainder section
		usleep(1000000*distributionRem(generatorRem));
	}
}

int main()
{
	// Opening Input file
	input_file.open("inp-params.txt");
	// Taking in input
	input_file >> numberOfThreads >> k >> S >> l1 >> l2;
	currentSection = 0;
	pFile = fopen("CME-log.txt", "w");

	sem_init(&rw_mutex, 0, 1);
	sem_init(&update_mutex, 0, 1);
	sem_init(&class_mutex, 0, 1);

	// initialising pthreads
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	
	// Vectors of Reader and Writer threads	
	vector <pthread_t> CSthreads(numberOfThreads);

	// Making ID vectors for  threads
	vector <int> thread_ids(numberOfThreads);

	for(auto i=0;i<numberOfThreads;i++){
		checker.push_back(false);
	}
	// launching the threads
	for(auto i = 0; i < numberOfThreads; i++) {
		thread_ids[i] = i;
		pthread_create(&CSthreads[i], &attr, testCS, &thread_ids[i]);
	}
	// joining the threads
	for(auto i = 0;i < numberOfThreads;i++) {
		pthread_join(CSthreads[i], NULL);
	}
	// Uncomment below line to print the time spent in waiting in seconds
	cout << total_waiting_time/(k*numberOfThreads)/1000000.0 << endl;
}