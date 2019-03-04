#include <iostream>
#include <vector>
#include <fstream>
#include <unistd.h>
#include <string>
#include <time.h>
#include <random>
#include <mutex>
using namespace std;

// declaring the mutex
mutex check_lock;
int counter = 0;

// declaring input variables
int capacity, np, nc, cntp, cntc, up, uc;

// input file object
fstream input_file;
// output file
fstream output_file;

// generator for random numbers
default_random_engine generator;

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
	exponential_distribution<double> distribution1(up);
	int id = *((int*)param);
	for(auto i = 0;i < cntp;i++) {
		while(true) {
			check_lock.lock();
			if(counter < capacity) {
				counter ++;
				break;
			} 
			else
				check_lock.unlock();
		}
		buffer.push_back(1);
		output_file << i << "th item produced by thread " << id << " at " <<
		get_formatted_time() << " into buffer location " << buffer.size() << endl;
		usleep(1000000*distribution1(generator));
		check_lock.unlock();

	}
}

// consumer funciton
void *consumer(void *param) {
	exponential_distribution<double> distribution2(uc);
	int id = *((int*)param);
	for(auto i = 0;i < cntc; i++) {
		while(true) {
			check_lock.lock();
			if(counter > 0) {
				counter --;
				break;
			}
			else
				check_lock.unlock();
		}
		buffer.pop_back();
		output_file << i << "th item read from the buffer by thread " << id << " at "
		<< get_formatted_time() << " from buffer location " << buffer.size() << endl;
		usleep(1000000*distribution2(generator));
		check_lock.unlock();
	}
}

int main()
{
	// reading input from input file
	input_file.open("inp-params.txt");
	input_file >> capacity >> np >> nc >> cntp >> cntc >> up >> uc;
	// output file
	output_file.open("output_file.txt", fstream::out);

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
}