#include <iostream>
#include <thread>
#include <random>
#include <fstream>
#include <atomic>
#include <sys/time.h>
#include <chrono>
#include <mutex>

using namespace std;

FILE* f=fopen("logs.txt","w");
// atomic<int>locki(0);
// // 0 thinking 1 hungry 2 eating
default_random_engine eng1, eng2;
long long int mucs, murem;

class MonitorDP
{
public:
    int n;
    int* self;
    int* status; 
    pthread_mutex_t mutex;
    pthread_cond_t *condition;
    void set_values(int n){
        condition = new pthread_cond_t[n];
        this->n = n;
        self = new int[n];
        status = new int[n];
        for (int i = 0; i < n; ++i)
        {
            self[i] = 0;
        }
    };

   int test (int i) {
     if (
         (status[i] == 1) &&
         (status[(i+1)% n] != 2) &&
         (status[(i-1+n)% n] != 2)) {
       status[i] = 2;
       pthread_cond_signal(&condition[i]);
       return 1;
     }
     return 0;
   }

   void pickup(int k) {
     pthread_mutex_lock(&(mutex));
     status[k] = 1;
     // printstate();
     if (!test(k)) {
       pthread_cond_wait(&condition[k], &mutex);
   }
     // printstate();
     pthread_mutex_unlock(&mutex);
   }

     void putdown(int k) {
     pthread_mutex_lock(&mutex);
     status[k] = 0;
     // printstate();
     test((k+1)%n);
     test((k-1+n)%n);
     pthread_mutex_unlock(&mutex);
   }


};
MonitorDP monitor;

string getTime(time_t input){
  struct tm * timeinfo;
  timeinfo = localtime (&input);
  static char output[10];
  sprintf(output,"%.2d:%.2d:%.2d",timeinfo->tm_hour,timeinfo->tm_min,timeinfo->tm_sec);
  string tim(output);
  return tim;
}

void philo(int id, int cnt){

    exponential_distribution<double> distribution1(mucs);
    eng1.seed(0);
    exponential_distribution<double> distribution2(murem);
    eng2.seed(0);
 
    for (int i = 0; i < cnt; i++){
    //acquiring the lock
        time_t now1=time(NULL);
        struct timeval tv1;
        gettimeofday(&tv1, NULL);
        fprintf(f,"%d th eat request by thread %d at %s\n",i, id, getTime(now1).c_str());
        monitor.pickup(id);

        struct timeval tv2;    
        gettimeofday(&tv2, NULL);

        time_t now2 = time(NULL);
        fprintf(f,"%dth CS Entry by Philosopher Thread %d at %s\n",i, id, getTime(now2).c_str());

        long long int t1 =  distribution1(eng1);
        this_thread::sleep_for(std::chrono::milliseconds(t1));
        time_t now3 = time(NULL);
        fprintf(f,"%lld th CS exit by Philosopher Thread %lld at %s\n",i,id,(getTime(now3).c_str()));

        monitor.putdown(id);
        // time_t now = time(NULL);
        // prod_time += (tv2.tv_sec - tv1.tv_sec) + (tv2.tv_usec - tv1.tv_usec) / 1e6;
        // m.unlock();

        t1 = distribution1(eng1);
        this_thread::sleep_for(std::chrono::seconds(t1));
    }
    pthread_exit(0);
}

int main(int argc, char const *argv[]){

    ifstream in("inp-params.txt");
    int n, cnt;
    in >> n >> cnt;
    in >> mucs >> murem;
    // in >> lambda1 >> lambda2;
    monitor.set_values(n);
    mucs = 1000 / mucs;
    murem = 1000 / murem;
    thread workers[n];

    for (int i = 0; i < n; ++i)
    {
        workers[i] = thread(philo, i, cnt);
    }

    for (int i = 0; i < n; ++i)
    {
        workers[i].join();
    }
    return 0;
}