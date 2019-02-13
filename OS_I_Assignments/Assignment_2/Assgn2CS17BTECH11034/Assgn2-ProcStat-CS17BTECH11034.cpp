#include <stdio.h> 
#include <vector>
#include <iostream>
#include <stdlib.h> 
#include <sys/wait.h>
#include <fcntl.h>
#include <sys/shm.h>
#include <sys/time.h>
#include <sstream>
#include <unistd.h>
#include <algorithm>
#include <cmath>
#include <sys/mman.h>
#include <fstream>
#include <chrono> 

using namespace std;

// auto start = chrono::high_resolution_clock::now();						// start time
											
struct stats {																// the struct to store in the shared memory
	float mean;
	float median;
	float standard_deviation;
};

int main()
{
	const int SIZE = 500;													// size of the shared memory
	const char *name = "stats";												// name of the shared memory object
	int fd;																	// file descriptor
	void *ptr;
	pid_t pid;																// pid_t struct to store value returned by fork()
	fd = shm_open(name, O_CREAT | O_RDWR,0666);								// creating the shared memory object, with read and write access
	if ( fd < 0 ) {															// cheking for errors in memory object creation fd < 0 on error
		cout << "Error Creating Shared Memory Object"<<endl;
		return 1;
	}
	ftruncate(fd, SIZE);													// truncating the size of the shared memory to size mentioned
	ptr = mmap(0, SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);			// pointer to store mapping to the shared memory
	stats *statistics = (stats*)ptr;
	int n, temp, i;
	cin >> n;
	vector <int> nums;

	for (i = 0;i < n;i++) {
		cin >> temp;
		nums.push_back(temp);
	}

	pid = fork();															// forking first child process from parent

	if(pid == 0) {															// child process to compute mean
		float mean = 0;
		float nf = n + 0.0;
		for(i = 0;i < n;i++) {
			mean += nums[i];
		}
		mean = mean/nf;
		statistics -> mean = mean;											// storing mean in the shared memory
	}

	else
	{
		pid = fork();														// forking second child process from parent

		if(pid == 0) {														// child process to compute standard deviation
		float mean = 0;
		float nf = n + 0.0;
		float s_dev = 0.0;
		for(i = 0;i < n;i++) {
			mean = mean + nums[i];
		}
		mean = mean/nf;
		for(i = 0;i < n;i++) {
			s_dev += pow((nums[i] - mean), 2);
		}
		s_dev /= (nf - 1.0);
		s_dev = pow(s_dev, 0.5);
		statistics -> standard_deviation = s_dev;							// storing standard deviation value in shared memory
		}

		else {
			pid = fork();													// forking third child process from parent

			if(pid == 0) {													// child process to compute median
				float median;
				sort(nums.begin(), nums.end());								// sorting the vector for median calculations
				if(n % 2 != 0)
					median = nums[n/2];
				else
					median = (nums[n/2] + nums[(n/2)-1])/2.0;
				statistics -> median = median;
			}

			else
			{
				wait(NULL);													// waiting for all the processes to end
				wait(NULL);
				wait(NULL);
				// auto stop = chrono::high_resolution_clock::now();		// to record end time
				// auto duration = chrono::duration_cast<chrono::microseconds>(stop - start);
				// cout << duration.count() << endl;						// print total time taken
				ofstream output_file;										
				output_file.open("output.txt"); 								// open file to write to
				output_file << "The average value is " << statistics->mean  // write to the file
				<< endl <<"The standard deviation value is "<<statistics->standard_deviation
				<< endl <<"The median value is "<< statistics->median <<endl;
			}
		}

	}
	shm_unlink(name);														// unlinking the shared memory object created

}