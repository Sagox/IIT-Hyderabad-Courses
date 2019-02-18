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

FILE *pFile;

int k, n, l1, l2;
vector<bool> waiting;
time_t tt;

atomic_int locker(0);
int key = 0;
int expected = 0;

default_random_engine generator;

vector<vector<float>> waiting_time_matrix;

void* testCS(void *param) {
	exponential_distribution<double> distribution1(l1);
	exponential_distribution<double> distribution2(l2);
	int j;
	int id = *((int*)param);
	for (auto i=1;i<=k;i++) {

		waiting[id] = true;
		key = 1;

		// logging into file begin
		auto reqEnterTime = chrono::system_clock::now();
		tt = chrono::system_clock::to_time_t (reqEnterTime);
		string cur_time = ((string)ctime(&tt)).substr(11,9);
		fprintf(pFile, "%dth CS request at %s by thread %d\n",
			i,cur_time.c_str(),id);
		// logging into file end
		auto start_time = chrono::high_resolution_clock::now();
		while (waiting[id] && key == 1)
			key = locker.compare_exchange_weak(expected,1);
		waiting[id] = false;
		auto end_time = chrono::high_resolution_clock::now();
		auto duration = chrono::duration_cast<chrono::microseconds>( end_time - start_time ).count();
		waiting_time_matrix[id].push_back(float(duration));
		// logging into file begin
		usleep(1000);
		auto actEnterTime = chrono::system_clock::now();
		tt = chrono::system_clock::to_time_t (actEnterTime);
		cur_time = ((string)ctime(&tt)).substr(11,9);
		fprintf(pFile, "%dth CS entry at %s by thread %d\n",
			i,cur_time.c_str(),id);
		usleep(distribution1(generator)*1000000);
		// loggin into file end

		j = (id+1)%n;
		while(j != id && !waiting[j])
			j = (j+1)%n;
		if(j == id)
			locker.operator=(0);
		else
			waiting[j] = false;

		// logging into file begin
		auto exitTime = chrono::system_clock::now();
		cur_time = ((string)ctime(&tt)).substr(11,9);
		fprintf(pFile, "%dth CS exit at %s by thread %d\n",
			i,cur_time.c_str(),id);
		// logging into file end

		usleep(distribution2(generator)*1000000);

	}
}

int main()
{
	pFile = fopen ("myfile.txt","w");
	fstream input_file;
	input_file.open("inp-params.txt");
	input_file >> n >> k >> l1 >> l2;
	waiting_time_matrix.resize(n);
	waiting.resize(n,false);
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
	for(auto i=0;i<n;i++) {
		for(auto j=0;j<k;j++) {
			cout << waiting_time_matrix[i][j] << " ";
		}
		cout << endl;
	}
}