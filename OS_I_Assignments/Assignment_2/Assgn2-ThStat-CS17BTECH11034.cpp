#include <pthread.h>
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <unistd.h>
#include <sys/time.h>
#include <algorithm>
#include <cmath>
#include <fstream>
#include <chrono> 

using namespace std;

auto start = chrono::high_resolution_clock::now();				// start time

float mean = 0.0, standard_deviation = 0.0, median = 0.0;			// global variables

void *get_mean(void *param)											// functions to compute mean
{ 
	vector<float>* v = static_cast<vector<float>*>(param);			
	int n = (*v).size();
	for (int i = 0;i < n;i++) {
		mean += (*v)[i];
	}
	mean = (mean + 0.0)/n;
	pthread_exit(0);												// exiting pthread
}

void *get_median(void *param)										// function to compute median
{
	vector<float>* v = static_cast<vector<float>*>(param);
	vector<float> b = *v;
	int n = b.size();
	sort(b.begin(), b.end());										// sorting the vector for median calculations
	if(n % 2 != 0)
		median = b[n/2];
	else
		median = (b[n/2] + b[(n/2)-1])/2.0;
	pthread_exit(0);												// exiting the pthread
}

void *get_standard_deviation(void *param)							// function to compute standard deviation
{
	vector<float>* v = static_cast<vector<float>*>(param);
	float tmean = 0;
	int n = (*v).size();
	float nf = n + 0.0;
	for(int i = 0;i < n;i++) {
		tmean = tmean + (*v)[i];
	}
	tmean = tmean/nf;
	for(int i = 0;i < n;i++) {
		standard_deviation += pow(((*v)[i] - tmean), 2);
	}
	standard_deviation /= (nf - 1.0);
	standard_deviation = pow(standard_deviation, 0.5);
	pthread_exit(0);												// exiting the pthread
}

int main()
{
	int n, i;
	float temp;
	vector<float> nums;
	cin >> n;														// number of entries
	for( int i = 0;i < n;i++) {										// storing the numbers	
		cin >> temp;
		nums.push_back(temp);
	}
	pthread_t tid1;													// pthread 1
	pthread_t tid2;													// pthread 2
	pthread_t tid3;													// pthread 3
	pthread_attr_t attr;
	pthread_attr_init(&attr);										// initializing pthread default attributes
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	pthread_create(&tid1, &attr, get_mean, &nums);					// pthread for mean
	pthread_create(&tid2, &attr, get_median, &nums);				// pthread for median
	pthread_create(&tid3, &attr, get_standard_deviation, &nums);	// pthreaf for standard deviation 
	pthread_join(tid1,NULL);										// join all the pthreads
	pthread_join(tid2,NULL);
	pthread_join(tid3,NULL);
	auto stop = chrono::high_resolution_clock::now();			// end time
	auto duration = chrono::duration_cast<chrono::microseconds>(stop - start);		// total time taken
	cout << duration.count() << endl;
	ofstream output_file;
	output_file.open("output.txt"); 									// open file to write output to 
	output_file << "The average value is " << mean 					// write output to the files
	<< endl <<"The standard deviation value is "<<standard_deviation
	<< endl <<"The median value is "<< median <<endl;
}