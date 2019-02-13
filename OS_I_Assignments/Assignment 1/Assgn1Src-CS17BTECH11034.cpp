#include <stdio.h> 
#include <iostream>
#include <stdlib.h> 
#include <sys/wait.h>
#include <fcntl.h>
#include <sys/shm.h>
#include <sys/time.h>
#include <sstream>
#include <unistd.h>
#include <sys/mman.h>

using namespace std;

int main(int argc, char *argv[])
{
	const int SIZE = 500;								// the size of the shared memory in bytes
	const char *name = "time";							// name of the shared memory object
	int fd;												// file descriptor 
	char *ptr = NULL;									// pointer to store mapping to the shared memory
	struct timeval tv;									// timeval struct to store output of gettimeofday()
	char *arguments[argc];								// list of arguments for execvp
	pid_t pid;											// pid_t struct to store value returned by fork()

	for( int i = 0 ; i < argc - 1 ; i++ )				// storing appropriate values in arguments as required by execvp
	{
		arguments[i] = argv[i +1];
	}

	arguments[argc - 1] = NULL;							// NULL ending the arguments list
	fd = shm_open(name, O_CREAT | O_RDWR,0666);			// creating the shared memory object, with read and write access

	if ( fd < 0 ) {										// cheking for errors in memory object creation fd < 0 on error
		cout << "Error Creating Shared Memory Object"<<endl;
		return 1;
	}

	ftruncate(fd, SIZE);								// truncating the size of the shared memory to size mentioned
	ptr = (char *)mmap(0, SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);					// storing the mapping of the shared memory object
	pid = fork();																			// forking a child process

	if ( pid < 0 ) {																		// making sure fork worked correctly
	fprintf(stderr, "Fork Failed");
	return 1;
	}

	else if ( pid == 0 ) {								// child process
	gettimeofday(&tv, NULL);							// getting time before command is run
	sprintf(ptr,"%ld",tv.tv_sec*1000000 + tv.tv_usec);	// storing time in the shared memory
	execvp(argv[1],arguments);							// running the command given by the user
	}

	else {												// parent process
	wait(NULL);											// wait for child process to terminate
	gettimeofday(&tv, NULL);							// get the current time
	stringstream tb(ptr);								// put the string containing the beginning time into a buffer
	long time_begin = 0;
	tb >> time_begin;									// storing the beginning time into a long integer type
	cout<<"Elapsed time: "<< (tv.tv_sec*1000000 + tv.tv_usec - time_begin)/1000000.0<<endl;	// printing the difference between the two times i.e. the time taken by the command
	shm_unlink(name);									// unlinking the shared memory object created
	}
	
	return 0;
}
