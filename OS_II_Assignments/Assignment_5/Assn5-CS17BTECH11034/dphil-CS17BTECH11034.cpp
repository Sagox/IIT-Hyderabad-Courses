#include <iostream>
#include <vector>
#include <fstream>
#include <unistd.h>
#include <string>
#include <time.h>
#include <chrono>     
#include <semaphore.h>
#include <random>
#include <mutex>

using namespace std;

enum state_of_philosopher{THINKING, HUNGRY, EATING};

// Initialising the input variables as global so that they can
// be viewed across threads
int n, h;
float ucs, urem;

// file to log into
FILE *pFile;

// declaring output/input files
fstream input_file, average_output;

float total_waiting_time = 0, worst_case_waiting_time = 0;

// function to get formatted time
string get_formatted_time() {
	char current_time[9];
	time_t now = time(0);
	tm *ltm = localtime(&now);
	sprintf(current_time, "%.2d:%.2d:%.2d", ltm->tm_hour, ltm->tm_min, ltm->tm_sec);
	return string(current_time);
}

// monitor class to implement dining philosophers
class DiningPhilosophers
{
public:

	int number_of_philosophers;
	// vector to store the current statuses of the philosophers
	vector<state_of_philosopher> state;
	// vector of semaphores for each of the philosophers
	pthread_mutex_t mutex;
	vector<pthread_cond_t> self;
	// initialization function for the philosophers
	// sem_t pickup_sem, putdown_sem, test_sem;
	sem_t tester;
	void DiningPhilosophersinit(int num) {
		number_of_philosophers  = num;
		state.resize(num);
		self.resize(num);
		initialization_code();
	}
	// chopstick pickup function
	void pickup(int i) {
		pthread_mutex_lock(&(mutex));
		state[i] = HUNGRY;
		test(i);
		if (state[i] != EATING)
			pthread_cond_wait(&self[i], &mutex);
		pthread_mutex_unlock(&mutex);
	}
	// chopstick putdown function
	void putdown(int i) {
     	pthread_mutex_lock(&mutex);
		state[i] = THINKING;
		test((i + number_of_philosophers - 1) % number_of_philosophers);
		test((i + 1) % number_of_philosophers);
     	pthread_mutex_unlock(&mutex);
	}
	// function to check the state of philosophers
	void test(int i) {
		if ((state[(i + number_of_philosophers - 1) % number_of_philosophers] != EATING) && (state[i] == HUNGRY) && (state[(i + 1) % number_of_philosophers] != EATING)) {
			state[i] = EATING;
			pthread_cond_signal(&self[i]);
		}
	}

	void initialization_code() {
		for (int i = 0; i < number_of_philosophers; i++) {
			state[i] = THINKING;
		}
	}
};

DiningPhilosophers diningPhilosophers;

// code for each of the philosopher thread
void *philosopher(void *param) {

	// id of the thread
	int id = *((int*)param);
	// declaring time measuring variables
	chrono::time_point<chrono::system_clock> enterTime, exitTime, requestTime;
	// random engine to generate random numbers
	default_random_engine generatorThinking(random_device{}());
	default_random_engine generatorEat(random_device{}());
	// exponential distribution
	exponential_distribution<double> distributionCS(1000.0/ucs);
	exponential_distribution<double> distributionRem(1000.0/urem);
	for(auto j = 0;j < h;j++){
		// logging into log file
		fprintf(pFile, "%d th eat request by Philosopher thread %d at %s.\n", j, id, get_formatted_time().c_str());
		// storing request time
		requestTime = chrono::high_resolution_clock::now();
		// monitor function to pickup chopsticks
		diningPhilosophers.pickup(id);
		// recording enter time
		enterTime = chrono::high_resolution_clock::now();
		// time taken to fullfil request
		auto duration = chrono::duration_cast<chrono::microseconds>(enterTime - requestTime);
		// add duration to total waiting time
		total_waiting_time += duration.count();
		// check if time taken is worst time taken yet
		worst_case_waiting_time = duration.count() > worst_case_waiting_time ? duration.count() : worst_case_waiting_time;
		fprintf(pFile, "%d th CS entry by Philosopher thread %d at %s.\n", j, id, get_formatted_time().c_str());
		// simulate eating
		usleep(1000000*distributionCS(generatorEat));
		// monitor function to putdown chopsticks
		exitTime = chrono::high_resolution_clock::now();
		fprintf(pFile, "%d th CS exit by Philosopher thread %d at %s.\n", j, id, get_formatted_time().c_str());
		diningPhilosophers.putdown(id);
		// simulating remainder section
		usleep(1000000*distributionRem(generatorThinking));


	}

}

int main()
{

	// Opening Input file
	input_file.open("inp-params.txt");
	// Taking in input
	input_file >> n >> h >> ucs >> urem;
	// average output file
	average_output.open("Times.txt", fstream::out);
	// log output file
	pFile = fopen("dphil-log.txt", "w");

	diningPhilosophers.DiningPhilosophersinit(n);

	// pthread setup
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);

	// vector of philosopher threads
	vector <pthread_t> philosopher_threads(n);

	// vector of philosopher thread IDs
	vector <int> philosopher_thread_ids(n);

	// launching philospher threads
	for(auto i = 0;i < n;i++) {
		philosopher_thread_ids[i] = i;
		pthread_create(&philosopher_threads[i], &attr, philosopher, &philosopher_thread_ids[i]);
	}
	for(auto i = 0;i < n;i++) {
		pthread_join(philosopher_threads[i], NULL);
	}

	// philosopher average
	average_output << "Average Time Taken for Philosopher Threads " << total_waiting_time/(n*h)/1000.0 << " ms" << endl;
	// philosopher worst
	average_output << "Worst Waiting Time for Philosopher Threads " << worst_case_waiting_time/1000.0 << " ms" << endl;

}