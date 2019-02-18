#include <iostream>
#include <pthread.h>
#include <stdio.h>
#include <chrono>
#include <fstream>
#include <vector>
#include <atomic>
#include <unistd.h>
#include <random>
#include <ctime>

using namespace std;

// file to log into
FILE *pFile;

// parameters to loaded in from the file
int k, l1, l2;

time_t tt;

// atomic variable used in maintaining mutual exclusion
atomic<int> locker(0);

// generator for random numbers
default_random_engine generator;

// matrix to store waiting times of threads
vector<vector<float>> waiting_time_matrix;

void* testCS(void *param) {

	// exponential distribution
	exponential_distribution<double> distribution1(l1);
	exponential_distribution<double> distribution2(l2);

	//  id of the thread
	int id = *((int*)param);

	// request loop
	for (auto i=1;i<=k;i++) {

		// recording and storing request times
		auto reqEnterTime = chrono::system_clock::now();
		tt = chrono::system_clock::to_time_t (reqEnterTime);
		string cur_time = ((string)ctime(&tt)).substr(11,9);
		fprintf(pFile, "%dth CS request at %s by thread %d\n",
			i,cur_time.c_str(),id);
		auto start_time = chrono::high_resolution_clock::now();
		
		// spin lock implemented using compare_exchange
		while (1) {
			int expected = 0, desired = 1;
			if(locker.compare_exchange_strong(expected,desired)) break;
		}
		 // recording end times
		auto end_time = chrono::high_resolution_clock::now();
		auto duration = chrono::duration_cast<chrono::microseconds>( end_time - start_time ).count();
		waiting_time_matrix[id].push_back(float(duration));

		// record enter time
		auto actEnterTime = chrono::system_clock::now();
		tt = chrono::system_clock::to_time_t (actEnterTime);
		cur_time = ((string)ctime(&tt)).substr(11,9);

		// critical section simulation
		usleep(distribution1(generator)*1000000);

		// logging entry time stored prior to critical section
		fprintf(pFile, "%dth CS entry at %s by thread %d\n",
			i,cur_time.c_str(),id);

		// exiting critical section
		locker = 0;

		// recording and storing exit times
		auto exitTime = chrono::system_clock::now();
		cur_time = ((string)ctime(&tt)).substr(11,9);
		fprintf(pFile, "%dth CS exit at %s by thread %d\n",
			i,cur_time.c_str(),id);
		
		// reminder section
		usleep(distribution2(generator)*1000000);

	}
}

int main()
{
	// number of threads
	int n;

	// log file
	pFile = fopen ("cas-output.txt","w");

	// input file
	fstream input_file;
	input_file.open("inp-params.txt");
	input_file >> n >> k >> l1 >> l2;
	
	// waiting time matrix
	waiting_time_matrix.resize(n);
	
	// thread array
	int threadIDs[n];

	// pthread initialization
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	vector <pthread_t> threads(n);

	// pthread creation
	for(auto i=0;i<n;i++) {
		threadIDs[i] = i;
		pthread_create(&threads[i], &attr, testCS, &threadIDs[i]);
	}

	// pthread joining
	for(auto i=0;i<n;i++) {
		pthread_join(threads[i], NULL);
	}
	fclose(pFile);

	// uncomment below to get stats in STDOUT

	// float sum = 0, max = 0, ssum = 0;
	// for(auto i=0;i<n;i++) {
	// 	for(auto j=0;j<k;j++) {
	// 		if(max < waiting_time_matrix[i][j])
	// 			max = waiting_time_matrix[i][j];
	// 		sum += waiting_time_matrix[i][j];
	// 		ssum += waiting_time_matrix[i][j]*waiting_time_matrix[i][j];
	// 	}
	// }
	// cout << max << " " << sum/(n*k + 0.0) << " " << sqrt(ssum/(n*k + 0.0) - sum*sum/(n*n*k*k));
}