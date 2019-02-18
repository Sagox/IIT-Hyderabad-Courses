#include <iostream>
#include <pthread.h>
#include <stdio.h>
#include <mutex>
#include <chrono>
#include <fstream>
#include <vector>
#include <atomic>
#include <unistd.h>
#include <random>
#include <ctime>

using namespace std;

mutex pm;

FILE *pFile;

int k, l1, l2;

time_t tt;

atomic_flag locker = ATOMIC_FLAG_INIT;

default_random_engine generator;

vector<vector<float>> waiting_time_matrix;

void* testCS(void *param) {
	int id = *((int*)param);
	exponential_distribution<double> distribution1(l1);
	exponential_distribution<double> distribution2(l2);
	for (auto i=1;i<=k;i++) {
		auto reqEnterTime = chrono::system_clock::now();
		tt = chrono::system_clock::to_time_t (reqEnterTime);
		string cur_time = ((string)ctime(&tt)).substr(11,9);
		fprintf(pFile, "%dth CS request at %s by thread %d\n",
			i,cur_time.c_str(),id);
		auto start_time = chrono::high_resolution_clock::now();
		
		while (locker.test_and_set(memory_order_acquire));
		auto end_time = chrono::high_resolution_clock::now();
		auto duration = chrono::duration_cast<chrono::microseconds>( end_time - start_time ).count();
		waiting_time_matrix[id].push_back(float(duration));
		usleep(1000);
		auto actEnterTime = chrono::system_clock::now();
		tt = chrono::system_clock::to_time_t (actEnterTime);
		cur_time = ((string)ctime(&tt)).substr(11,9);
		fprintf(pFile, "%dth CS entry at %s by thread %d\n",
			i,cur_time.c_str(),id);
		usleep(distribution1(generator)*1000000);
		locker.clear(memory_order_release); 
		auto exitTime = chrono::system_clock::now();
		tt = chrono::system_clock::to_time_t (exitTime);
		cur_time = ((string)ctime(&tt)).substr(11,9);
		fprintf(pFile, "%dth CS exit at %s by thread %d\n",
			i,cur_time.c_str(),id);
		usleep(distribution2(generator)*1000000);

	}
}

int main()
{
	int message = 1, n;
	fstream input_file;
	input_file.open("inp-params.txt");
	input_file >> n >> k >> l1 >> l2;
	waiting_time_matrix.resize(n);
	pFile = fopen ("myfile.txt","w");
	int threadIDs[n];
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	vector <pthread_t> threads(n);
	for(auto i=0;i<n;i++) {
		threadIDs[i] = i;
		pthread_create(&threads[i], &attr, testCS, &threadIDs[i]);
	}
	for(auto i=0;i<n;i++) {
		pthread_join(threads[i], NULL);
	}
	fclose(pFile);
	float sum = 0, max = 0, ssum = 0;
	for(auto i=0;i<n;i++) {
		for(auto j=0;j<k;j++) {
			if(max < waiting_time_matrix[i][j])
				max = waiting_time_matrix[i][j];
			sum += waiting_time_matrix[i][j];
			ssum += waiting_time_matrix[i][j]*waiting_time_matrix[i][j];
		}
	}
	cout << max << " " << sum/(n*k + 0.0) << " " << sqrt(ssum/(n*k + 0.0) - sum*sum/(n*n*k*k));
}