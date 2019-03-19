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
int nw, nr, kr, kw;
float ucs, urem;

// function to get formatted time
string get_formatted_time() {
	char current_time[9];
	time_t now = time(0);
	tm *ltm = localtime(&now);
	sprintf(current_time, "%.2d:%.2d:%.2d", ltm->tm_hour, ltm->tm_min, ltm->tm_sec);
	return string(current_time);
}

// declaring the semaphores
sem_t in, out, wrt;

// other variables to guarantee mutual exclusion
int ctrin = 0, ctrout = 0;
bool wait = false;

// file to log into
FILE *pFile;

// declaring output/input files
fstream input_file, average_output;

float total_reader_waiting_time = 0, total_writer_waiting_time = 0, worst_case_writer_waiting_time = 0, worst_case_reader_waiting_time = 0;

// reader thread function
void *reader(void *param) {
	int id = *((int*)param);
	chrono::time_point<chrono::system_clock> enterTime, requestTime, exitTime;
	default_random_engine generatorRem(random_device{}());
	default_random_engine generatorCS(random_device{}());
	exponential_distribution<double> distributionCS(1000.0/ucs);
	exponential_distribution<double> distributionRem(1000.0/urem);
	for(auto i=0;i<kr;i++) {
		fprintf(pFile, "%d th CS request by Reader thread %d at %s.\n", i, id, get_formatted_time().c_str());
		requestTime = chrono::high_resolution_clock::now();
		sem_wait(&in);
		ctrin++;
		sem_post(&in);		
		enterTime = chrono::high_resolution_clock::now();
		auto duration = chrono::duration_cast<chrono::microseconds>(enterTime - requestTime);
		total_reader_waiting_time += duration.count();
		worst_case_reader_waiting_time = duration.count() > worst_case_reader_waiting_time ? duration.count() : worst_case_reader_waiting_time;
		fprintf(pFile, "%d th CS entry by Reader thread %d at %s.\n", i, id, get_formatted_time().c_str());
		usleep(1000000*distributionCS(generatorCS));
		sem_wait(&out);
		ctrout++;
		if(wait == 1 && ctrin == ctrout)
			sem_post(&wrt);
		sem_post(&out);
		exitTime = chrono::high_resolution_clock::now();
		fprintf(pFile, "%d th CS exit by Reader thread %d at %s.\n", i, id, get_formatted_time().c_str());
		usleep(1000000*distributionRem(generatorRem));

	}
}


// writer thread function
void *writer(void *param) {
	chrono::time_point<chrono::system_clock> enterTime, exitTime, requestTime;
	default_random_engine generatorRem(random_device{}());
	default_random_engine generatorCS(random_device{}());
	exponential_distribution<double> distributionCS(1000.0/ucs);
	exponential_distribution<double> distributionRem(1000.0/urem);
	int id = *((int*)param);
	for(auto i=0;i<kw;i++) {
		fprintf(pFile, "%d th CS request by Writer thread %d at %s.\n", i, id, get_formatted_time().c_str());
		requestTime = chrono::high_resolution_clock::now();
		sem_wait(&in);
		sem_wait(&out);
		if(ctrin == ctrout)
			sem_post(&out);
		else {
			wait = 1;
			sem_post(&out);
			sem_wait(&wrt);
			wait = 0;
		}
		enterTime = chrono::high_resolution_clock::now();
		auto duration = chrono::duration_cast<chrono::microseconds>(enterTime - requestTime);
		total_writer_waiting_time += duration.count();
		worst_case_writer_waiting_time = duration.count() > worst_case_writer_waiting_time ? duration.count() : worst_case_writer_waiting_time;
		fprintf(pFile, "%d th CS entry by Writer thread %d at %s.\n", i, id, get_formatted_time().c_str());
		usleep(1000000*distributionCS(generatorCS));
		sem_post(&in);
		exitTime = chrono::high_resolution_clock::now();
		fprintf(pFile, "%d th CS exit by Writer thread %d at %s.\n", i, id, get_formatted_time().c_str());
		usleep(1000000*distributionRem(generatorRem));
	}
}

int main()
{
	// Opening Input file
	input_file.open("inp-params.txt");
	// Taking in input
	input_file >> nw >> nr >> kw >> kr >> ucs >> urem;

	average_output.open("FairRW-Average.txt", fstream::out);
	pFile = fopen("FairRW-log.txt", "w");

	sem_init(&in, 0, 1);
	sem_init(&out, 0, 1);
	sem_init(&wrt, 0, 0);

	// initialising pthreads
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	
	// Vectors of Reader and Writer threads	
	vector <pthread_t> writer_threads(nw);
	vector <pthread_t> reader_threads(nr);

	// Making ID vectors for reader and writer threads
	vector <int> writer_thread_ids(nw);
	vector <int> reader_thread_ids(nr);

	// launching the writer threads
	for(auto i = 0; i < nw; i++) {
		writer_thread_ids[i] = i;
		pthread_create(&writer_threads[i], &attr, writer, &writer_thread_ids[i]);
	}
	// launching the reader threads
	for(auto i = 0; i < nr; i++) {
		reader_thread_ids[i] = i;
		pthread_create(&reader_threads[i], &attr, reader, &reader_thread_ids[i]);
	}

	// joining the reader and writer threads
	for(auto i = 0;i < nw;i++) {
		pthread_join(writer_threads[i], NULL);
	}
	for(auto i = 0;i < nr;i++) {
		pthread_join(reader_threads[i], NULL);
	}

	// writer average
	average_output << "Average Time Taken for Writer Threads " << total_writer_waiting_time/(nw*kw)/1000.0 << " ms" << endl;
	// reader average
	average_output << "Average Time taken for Reader Threads " <<total_reader_waiting_time/(nr*kr)/1000.0 << " ms" << endl;
	// writer worst
	average_output << "Worst Waiting Time for Writer Threads " << worst_case_writer_waiting_time/1000.0 << " ms" << endl;
	// reader worst
	average_output << "Worst Waiting times for Reader Threads " << worst_case_reader_waiting_time/1000.0 << " ms" << endl;
}