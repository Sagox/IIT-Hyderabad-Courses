#include <iostream>
#include <vector>
#include <fstream>
#include <unistd.h>
#include <string>
#include <time.h>
#include <chrono>
#include <random>
#include <mutex>
using namespace std;

// declaring the mutex
mutex check_lock, update_lock;
int counter = 0;

// declaring input variables
int capacity, np, nc, cntp, cntc;
float up, uc;

// input file object
fstream input_file;
// output file
fstream output_file;

// generator for random numbers
default_random_engine generator1;
default_random_engine generator2;

double total_producer_time;
double total_consumer_time;

vector <int> buffer;

string get_formatted_time() {
	char current_time[9];
	time_t now = time(0);
	tm *ltm = localtime(&now);
	sprintf(current_time, "%.2d:%.2d:%.2d", ltm->tm_hour, ltm->tm_min, ltm->tm_sec);
	return string(current_time);
}

// consumer funciton
void *consumer(void *param) {
	exponential_distribution<double> distribution2(1.0/uc);
	int id = *((int*)param);
	for(auto i = 0;i < cntc; i++) {
		auto start = chrono::high_resolution_clock::now(); 
		while(true) {
			check_lock.lock();
			if(counter > 0) {
				counter --;
				break;
			}
			check_lock.unlock();
		}
		// cout << counter << endl;
		auto stop = chrono::high_resolution_clock::now(); 
		auto duration = chrono::duration_cast<chrono::microseconds>(stop - start);
		total_consumer_time += double(duration.count());
		buffer.pop_back();
		output_file << i << "th item read from the buffer by thread " << id << " at "
		<< get_formatted_time() << " from buffer location " << buffer.size() << endl;
		check_lock.unlock();
		usleep(float(1000000*distribution2(generator1)));
	}
}
// producer function
void *producer(void *param) {
	exponential_distribution<double> distribution1(1.0/up);
	int id = *((int*)param);
	for(auto i = 0;i < cntp;i++) {
		auto start = chrono::high_resolution_clock::now(); 
		while(true) {
			check_lock.lock();
			if(counter < capacity) {
				counter ++;
				break;
			} 
			check_lock.unlock();
		}
		auto stop = chrono::high_resolution_clock::now(); 
		auto duration = chrono::duration_cast<chrono::microseconds>(stop - start);
		total_producer_time += double(duration.count());
		buffer.push_back(1);
		output_file << i << "th item produced by thread " << id << " at " <<
		get_formatted_time() << " into buffer location " << buffer.size() << endl;
		check_lock.unlock();
		usleep(float(1000000*distribution1(generator2)));
	}
}


int main()
{
	// reading input from input file
	input_file.open("inp-params.txt");
	input_file >> capacity >> np >> nc >> cntp >> cntc >> up >> uc;
	// output file
	output_file.open("output-lock.txt", fstream::out);

	// initialising pthreads
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	vector <pthread_t> consumer_threads(nc);
	vector <pthread_t> producer_threads(np);
	// id vectors
	vector <int> consumer_thread_ids(nc);
	vector <int> producer_thread_ids(np);

	// creating pthreads
	for(auto i = 0; i < nc; i++) {
		consumer_thread_ids[i] = i;
		pthread_create(&consumer_threads[i], &attr, consumer, &consumer_thread_ids[i]);
	}
	for(auto i = 0; i < np; i++) {
		producer_thread_ids[i] = i;
		pthread_create(&producer_threads[i], &attr, producer, &producer_thread_ids[i]);
	}
	for(auto i = 0;i < nc;i++) {
		pthread_join(consumer_threads[i], NULL);
	}
	for(auto i = 0;i < np;i++) {
		pthread_join(producer_threads[i], NULL);
	}

}