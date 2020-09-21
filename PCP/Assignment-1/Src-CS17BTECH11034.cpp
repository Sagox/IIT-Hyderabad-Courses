#include <iostream>
#include <vector>
#include <fstream>
#include <chrono>
#include <random>
#include <mutex>

#define LOG 1

using namespace std;

// input
// N: output primes from 1 to 10^N
// M: number of threads to be used 
int N, M;

// Counter for dynamic allocation of numbers
class Counter {

public:

	long counterValue;

	// lock to make getAndIncrement mutually exclusive
	mutex counterLock;

	Counter(long n) {
		counterValue = n;
	}

	long getAndIncrement() {
		counterLock.lock();
		auto currentValueOfCounter = counterValue++;
		counterLock.unlock();
		return currentValueOfCounter;
	}

};

vector<long> seive;

// primes are checked  by checking for divisibility by all primes in
// in range [2, sqrt(n)]
bool isPrime(long n) {
	if(n == 1)
		return false;
	for(auto i=0;i<seive.size();i++) {
		if(seive[i] >= n)
			break;
		if(n%seive[i] == 0)
			return false;
	}
	return true;
}

// get all primes from 1-sqrt(n), this array is then used by the
// isPrime routine to check if a number is prime
void populateSeive() {
	for(auto i=2;i<=pow(10, ceil(N/2.0));i++) {
		if(isPrime(i))
			seive.push_back(i);
	}
}

// input file object
fstream input_file;

// output files
FILE *output_file_dam, *output_file_sam1, *output_file_sam2, *output_file_times;

// routine for the threads used in the DAM algorithm
void *dam_thread(void *param) {
	Counter *counter = (Counter*)param;
	long i=0;
	while(i<(long)pow(10, N)) {
		i = counter->getAndIncrement();
		if(isPrime(i)) {
			#ifndef LOG
			fprintf(output_file_dam, "%ld ", i);
			#endif
		}
	}
	return nullptr;
}

// routine for the threads used in the SAM1 algorithm
void *sam1_thread(void *param) {
	int index = *(int*)param;
	for(auto i=index;i<(long)pow(10,N);i+=M) {
		if(isPrime(i)) {
			#ifndef LOG
			fprintf(output_file_sam1, "%ld ", i);
			#endif
		}
	}
	return nullptr;
}

// routine for the threads used in the SAM2 algorithm
void *sam2_thread(void *param) {
	int index = *(int*)param;
	for(auto i=index;2*i-1<(long)pow(10,N);i+=M) {
		if(isPrime(2*i-1)) {
			#ifndef LOG
			fprintf(output_file_sam1, "%ld ", 2*i-1);
			#endif
		}
	}
	return nullptr;
}

// DAM algorithm to get all primes <= N
void dam() {
	Counter counter(1);
	// initialising pthreads
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	vector <pthread_t> worker(M);

	// creating pthreads
	for(auto i = 0; i < M; i++) {
		pthread_create(&worker[i], &attr, dam_thread, &counter);
	}
	for(auto i = 0;i < M;i++) {
		pthread_join(worker[i], NULL);
	}	
}

// SAM1 algorithm to get all primes <= N
void sam1() {

	// initialising pthreads
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	vector <pthread_t> worker(M);
	vector<int> index(M);
	// creating pthreads
	for(auto i = 0; i < M; i++) {
		index[i] = i+1;
		pthread_create(&worker[i], &attr, sam1_thread, &index[i]);
	}
	for(auto i = 0;i < M;i++) {
		pthread_join(worker[i], NULL);
	}	
}

// SAM2 algorithm to get all primes <= N
void sam2() {
	// initialising pthreads
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	vector <pthread_t> worker(M);
	vector<int> index(M);
	// creating pthreads
	for(auto i = 0; i < M; i++) {
		index[i] = i+1;
		pthread_create(&worker[i], &attr, sam1_thread, &index[i]);
	}
	for(auto i = 0;i < M;i++) {
		pthread_join(worker[i], NULL);
	}
}

int main()
{
	// reading input from input file
	input_file.open("inp-params.txt");
	input_file >> N >> M;

	// open output files	
	output_file_dam = fopen("Primes-DAM.txt", "w");
	output_file_sam1 = fopen("Primes-SAM1.txt", "w");
	output_file_sam2 = fopen("Primes-SAM2.txt", "w");
	output_file_times = fopen("Times.txt", "w");

	// store all the primes from 1-sqrt(n), this is used by the
	// isPrime function
	populateSeive();

	auto t1 = chrono::steady_clock::now();
	// dynamic allocation
	dam();
	auto t2 = chrono::steady_clock::now();
	// static allocation
	sam1();
	auto t3 = chrono::steady_clock::now();
	// optimised static allocation
	sam2();
	auto t4 = chrono::steady_clock::now();

	auto timeTakenForDAM = chrono::duration_cast<chrono::microseconds>(t2 - t1).count();
	auto timeTakenForSAM1 = chrono::duration_cast<chrono::microseconds>(t3 - t2).count();
	auto timeTakenForSAM2 = chrono::duration_cast<chrono::microseconds>(t4 - t3).count();

	cout << timeTakenForDAM << endl;
	cout << timeTakenForSAM1 << endl;
	cout << timeTakenForSAM2 << endl;

	fprintf(output_file_times, "%ld %ld\n", timeTakenForDAM, timeTakenForSAM1);

}