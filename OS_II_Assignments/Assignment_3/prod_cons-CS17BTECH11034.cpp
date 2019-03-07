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

// declaring the semaphores
sem_t locker, full, empty;

// declaring input variables
int capacity, np, nc, cntp, cntc;
float up, uc;

// input file object
fstream input_file;
// output file
fstream output_file;

// generator for random numbers
default_random_engine generator;

vector<double> total_producer_time;
vector<double>  total_consumer_time;

vector <int> buffer;

string get_formatted_time() {
	char current_time[9];
	time_t now = time(0);
	tm *ltm = localtime(&now);
	sprintf(current_time, "%.2d:%.2d:%.2d", ltm->tm_hour, ltm->tm_min, ltm->tm_sec);
	return string(current_time);
}

// producer function
void *producer(void *param) {
	chrono::time_point<chrono::system_clock> start, end;
	exponential_distribution<double> distribution1(up);
	int id = *((int*)param);
	start = chrono::system_clock::now();
	for(auto i = 0;i < cntp;i++) {
		sem_wait(&empty);
		sem_wait(&locker);
		buffer.push_back(1);
		output_file << i << "th item produced by thread " << id << " at "
		<< get_formatted_time() << " into buffer location " << buffer.size() << endl;
		usleep(1000000*distribution1(generator));
		sem_post(&locker);
		sem_post(&full);
	}
	end = chrono::system_clock::now(); 
	chrono::duration<double> elapsed_seconds = end - start; 
	total_producer_time[id] = elapsed_seconds.count();
}

// consumer funciton
void *consumer(void *param) {
	chrono::time_point<chrono::system_clock> start, end;
	exponential_distribution<double> distribution2(uc);
	int id = *((int*)param);
	start = chrono::system_clock::now();
	for(auto i = 0;i < cntc; i++) {
		sem_wait(&full);
		sem_wait(&locker);
		buffer.pop_back();
		output_file << i << "th item read from the buffer by thread " << id << " at "
		<< get_formatted_time() << " from buffer location " << buffer.size() << endl;
		usleep(1000000*distribution2(generator));
		sem_post(&locker);
		sem_post(&empty);
	}
	end = chrono::system_clock::now(); 
	chrono::duration<double> elapsed_seconds = end - start; 
	total_consumer_time[id] = elapsed_seconds.count();
}

int main()
{
	// reading input from input file
	input_file.open("inp-params.txt");
	input_file >> capacity >> np >> nc >> cntp >> cntc >> up >> uc;
	// output file
	output_file.open("ouput-semaphore.txt", fstream::out);

	// initialising semaphores
	// second argument 0 => semaphore can be shared between threads
	sem_init(&locker, 0, 1);
	sem_init(&full, 0, 0);
	sem_init(&empty, 0, capacity);

	// initialising pthreads
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	vector <pthread_t> consumer_threads(nc);
	vector <pthread_t> producer_threads(np);
	// id vectors
	vector <int> consumer_thread_ids(nc);
	vector <int> producer_thread_ids(np);

	// time vectors
	total_producer_time.resize(np);
	total_consumer_time.resize(nc);

	// creating pthreads
	for(auto i = 0; i < np; i++) {
		producer_thread_ids[i] = i;
		pthread_create(&producer_threads[i], &attr, producer, &producer_thread_ids[i]);
	}
	for(auto i = 0; i < nc; i++) {
		consumer_thread_ids[i] = i;
		pthread_create(&consumer_threads[i], &attr, consumer, &consumer_thread_ids[i]);
	}
	for(auto i = 0;i < nc;i++) {
		pthread_join(consumer_threads[i], NULL);
	}
	for(auto i = 0;i < np;i++) {
		pthread_join(producer_threads[i], NULL);
	}
	cout << "producer" << accumulate(total_producer_time.begin(), total_producer_time.end(), 0)/(cntp + 0.0) << endl;
	cout << "consumer" << accumulate(total_consumer_time.begin(), total_consumer_time.end(), 0)/(cntc + 0.0) << endl;
}