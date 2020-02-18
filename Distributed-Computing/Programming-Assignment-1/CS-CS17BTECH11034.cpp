#include <iostream>
#include <vector>
#include <fstream>
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <mutex>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <random>
#include <cmath>

#define DEBUG_MODE 1
#define BUFSIZE 1024
using namespace std;


int N, K, MAXPENDING, beginLock = 0, roundDone = 0;
// parameters for exponential distributions
float l_p, l_q, l_send, l_drift, l_driftk;
// Table to store all the time values after every round
int **SyncTable;

// mutex locks to synchronise the threads at some points
mutex mtx, mtx1;

// file to write output to
FILE *pFile;

// string sent when requesting for synchrnisation
char syncRequestString[10] = "";

// function to receive sync requests and respond appropriately
void *receiveThread(void *id);

// function to send sync requests, receive response and update 
// the error factor correspondingly
void *serverProcess(void* params);

// function which simulates the drifting of clocks
void *driftMethod(void *params);

// function to write the value of the clocks to a file in the
void writeSyncTableToFile();

class localClock {
public:
	// the error factor added to the clocks for syncing their clock with
	// other clocks, measured in micro seconds
	chrono::nanoseconds errorFactor;
	// the theoretical "drift value" that the clock has drifted, measured
	// in micro seconds
	long long driftFactor = 0;

	chrono::time_point<std::chrono::high_resolution_clock> readTime() {
		#ifndef DEBUG_MODE
		cout << "\n\n\n" << errorFactor.count() << ", " << driftFactor << "\n\n\n" << endl;
		#endif
		return chrono::high_resolution_clock::now() + errorFactor + chrono::nanoseconds((driftFactor*1000)); 
	}

	void updateError(chrono::time_point<std::chrono::high_resolution_clock> T1, chrono::time_point<std::chrono::high_resolution_clock> T2,
		chrono::time_point<std::chrono::high_resolution_clock> T3, chrono::time_point<std::chrono::high_resolution_clock> T4) {
		// the x and y values are as defined in the text, y has a range so we randomly choose to add, subtract or neither for y/2
		auto x = ((T2 - T4) + (T3 - T1))/2;
		auto y = (T4 - T1) + (T2 - T3);
		errorFactor = x + y/2*(rand()%(3)-1);
	}

};
struct toReceiverThread{
	int id;
	localClock *lC;
};

int main()
{
	// get input parameters
	fstream input_file;
	input_file.open("inp-params.txt");

	// open output file
	pFile = fopen("out-log.txt", "w");
	
	input_file >> N >> K >> l_p >> l_q >> l_send >> l_drift >> l_driftk;
	
	MAXPENDING = N;
	
	SyncTable = (int **)malloc((N+1) * sizeof(int *));
	
	for(auto i=0;i<N+1;i++)
		SyncTable[i] = (int *)malloc((K+1) * sizeof(int)); 
	
	// input reading verification
	
	#ifndef DEBUG_MODE

	cout << N << endl;
	cout << K << endl;
	cout << l_p << endl;
	cout << l_q << endl;
	cout << l_send << endl;
	cout << l_drift << endl;
	
	#endif

	// vector of threads
	vector<pthread_t> threadsList(N);
	
	vector<int> serverIDs(N);
	for(auto i = 0; i < N; i++) {
		serverIDs[i] = i;
		pthread_create( &(threadsList[i]), NULL, serverProcess, (void*)(&serverIDs[i]));
	}
	// joining pthreads
	for(auto i = 0; i < N; i++) {
		pthread_join(threadsList[i], NULL);
	}

	writeSyncTableToFile();
}

void *driftMethod(void *params) {
	float *drift_factor = ((float*) (params));
	default_random_engine generator(chrono::high_resolution_clock::to_time_t(chrono::high_resolution_clock::now()));
	exponential_distribution<double> distribution(l_drift);
	exponential_distribution<double> distributionk(l_driftk);
	while(true) {
		*drift_factor += distribution(generator);
		sleep(distributionk(generator));		
	}
}


// the local clock for each of the server processes

void *serverProcess(void* params) {
	default_random_engine generator;
	exponential_distribution<double> distribution(l_p);

	// id of the server
	int selfID = *((int*) params);
	
	// threads for receiving and drifting the clock
	pthread_t receivingThread, driftThread;

	localClock lclock;
	pthread_create(&driftThread, NULL, driftMethod, (void *)(&(lclock.driftFactor)));

	toReceiverThread sendR {selfID, &lclock};
	// set up receiving server (should handle synchronise reply)
	pthread_create(&receivingThread, NULL, receiveThread, ((void *)&sendR));

	// waiting for all threads to be created
	while(beginLock < N);
	#ifndef DEBUG_MODE
	cout << "Server Process Begin" << endl;
	#endif
	in_port_t servPort;
	// local host
	char servIP[10] = "127.0.0.1";
	int sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (sockfd < 0) {
		#ifndef DEBUG_MODE
		cout << selfID << " failed" << endl;
		#endif
		perror("socket() failed");
		exit(-1);
	}
	
	struct sockaddr_in servAddr;
	memset(&servAddr, 0, sizeof(servAddr));
	servAddr.sin_family = AF_INET;
	int err = inet_pton(AF_INET, servIP, &servAddr.sin_addr.s_addr);
	if (err <= 0) {
		perror("inet_pton() failed");
		exit(-1);
	}

	// time data structures declaration
	auto nowC = chrono::high_resolution_clock::to_time_t(chrono::high_resolution_clock::now());
	char *nows = asctime(localtime(&nowC));
	char nowt[9];
	memset(syncRequestString, 0, sizeof(char)*10);
	sprintf(syncRequestString, "%d", selfID);
	// synchronise request send
	int requestNumber = 1;
	for (auto j=0;j<K;j++) {
		for(auto i=0;i<N;i++) {
			// send synchronisation request to all the threads
			if(i == selfID)
				continue;
			servPort = 50000 + i;
			servAddr.sin_port = htons(servPort);
			// connect to the server
			while(true) {
				if (connect(sockfd, (struct sockaddr *) &servAddr, sizeof(servAddr)) < 0) {
					perror("connect() failed");
					// exit(-1);
				} else break;
				sleep(1);
			}
			ssize_t sentLen = send(sockfd, syncRequestString, strlen(syncRequestString), 0);
			nowC = chrono::high_resolution_clock::to_time_t(chrono::high_resolution_clock::now());
			auto T1 = lclock.readTime();
			nows = asctime(localtime(&nowC));
			strncpy(nowt ,nows + 11, 8);
			fprintf(pFile, "Server %d requests %dth clock synchronisation to Server %d at %s.\n", selfID, requestNumber, i, nowt);
			if (sentLen < 0) {
				perror("send() failed");
				exit(-1);
			} else if (sentLen != strlen(syncRequestString)) {
				perror("send(): sent unexpected number of bytes");
				exit(-1);
			}
			chrono::time_point<std::chrono::high_resolution_clock> buffer[2];
			int recvLen = recv(sockfd, buffer, sizeof(chrono::time_point<std::chrono::high_resolution_clock>)*2, 0);
			if (recvLen < 0) {
				perror("recv() failed");
				exit(-1);
			}
			auto T4 = lclock.readTime();
			nowC = chrono::high_resolution_clock::to_time_t(chrono::high_resolution_clock::now());
			nows = asctime(localtime(&nowC));
			strncpy(nowt ,nows + 11, 8);
			fprintf(pFile, "Server %d receives %dth clock synchronisation response from Server %d at %s.\n", selfID, requestNumber, i, nowt);

			// we would like to correct the time to Time at server, this happens in the below call
			fprintf(pFile, "Computing %dth delta between Server %d and Server %d:...\n", j+1, i, selfID);
			lclock.updateError(T1, buffer[0], buffer[1], T4);
			close(sockfd);
			sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
			if (sockfd < 0) {
				#ifndef DEBUG_MODE
				cout << selfID << " failed" << endl;
				#endif
				perror("socket() failed");
				exit(-1);
			}
			requestNumber++;
			sleep(distribution(generator));
		}

		// cout<< "Total Drift " << lclock.driftFactor << endl;
		
		// this lock ensures that all the clocks enter their times into the table at about the same time
		mtx1.lock();
		roundDone++;
		mtx1.unlock();
		while(roundDone%N != 0 || roundDone == 0);
		SyncTable[selfID][j] = chrono::high_resolution_clock::to_time_t(lclock.readTime());
	}
}
void *receiveThread(void *params) {
	default_random_engine generator;
	exponential_distribution<double> distribution(l_q);
	toReceiverThread initVals = *((toReceiverThread*)params);

	// id of the server
	int selfID = initVals.id;
	localClock *myLocalClock = initVals.lC;
	// the port number is associated with the server id
	in_port_t servPort = 50000 + selfID; // Local port
	int servSock;
	if ((servSock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0) {
		perror("socket() failed");
		exit(-1);
	}

	struct sockaddr_in servAddr;
	memset(&servAddr, 0, sizeof(servAddr));
	servAddr.sin_family = AF_INET;
	servAddr.sin_addr.s_addr = htonl(INADDR_ANY);
	servAddr.sin_port = htons(servPort);

	// Bind to the local address
	if (bind(servSock, (struct sockaddr *) &servAddr, sizeof(servAddr)) < 0) {
		perror("bind() failed");
		exit(-1);
	}

	// Listen to the client
	if (listen(servSock, MAXPENDING) < 0) {
		perror("listen() failed");
		exit(-1);
	}

	// this lock ensures that no sender thread begins sending sync requests
	// before all the server are ready to listen
	mtx.lock();
		beginLock ++;
	mtx.unlock();
	#ifndef DEBUG_MODE
	cout << "Process now listening " << selfID << endl;
	#endif
	for (auto i=0;i<(N-1)*K;i++) {
		if (listen(servSock, MAXPENDING) < 0) {
			perror("listen() failed");
			exit(-1);
		}
		struct sockaddr_in clntAddr;
		socklen_t clntAddrLen = sizeof(clntAddr);

		// Wait for a client to connectservSock
		#ifndef DEBUG_MODE
		cout << "Waiting for accept" << endl;
		#endif
		int clntSock = 
				accept(servSock, (struct sockaddr *) &clntAddr, &clntAddrLen);
		if (clntSock < 0) {
			perror("accept() failed");
			exit(-1);
		}

		char clntIpAddr[INET_ADDRSTRLEN];
		if (inet_ntop(AF_INET, &clntAddr.sin_addr.s_addr, 
				clntIpAddr, sizeof(clntIpAddr)) != NULL) {
			// printf("----\nHandling client %s %d\n", clntIpAddr, ntohs(clntAddr.sin_port));
		} else {
			puts("----\nUnable to get client IP Address");
		}

		// Receive data
		char buffer[10];
		memset(buffer, 0, sizeof(char)*10);
		ssize_t recvLen = recv(clntSock, buffer, sizeof(char)*10, 0);
		int requestingServerID = atoi(buffer);

		auto nowC = chrono::high_resolution_clock::to_time_t(chrono::high_resolution_clock::now());
		char *nows = asctime(localtime(&nowC));
		char nowt[9];
		strncpy(nowt ,nows + 11, 8);
		fprintf(pFile, "Server %d receives %dth clock synchronisation request from Server %d at %s.\n", selfID, i + 1, requestingServerID, nowt);

		auto T2 = myLocalClock->readTime();
		sleep(distribution(generator));
		#ifndef DEBUG_MODE
		cout << "Request from server " << requestingServerID << endl;
		#endif

		char nqstring[10];
		if (recvLen < 0) {
			perror("recv() failed");
			exit(-1);
		} else {
			// send T1 & T2
			#ifndef DEBUG_MODE
			cout << "Sync Request Received" << endl;
			#endif
			nowC = chrono::high_resolution_clock::to_time_t(chrono::high_resolution_clock::now());
			auto T3 = myLocalClock->readTime();
			chrono::time_point<std::chrono::high_resolution_clock> msg[2];
			msg[0] = T2;
			msg[1] = T3;
			ssize_t sentLen = send(clntSock, msg, sizeof(chrono::time_point<std::chrono::high_resolution_clock>)*2, 0);
			nows = asctime(localtime(&nowC));
			strncpy(nowt ,nows + 11, 8);
			fprintf(pFile, "Server %d replies %dth clock synchronisation response to Server %d at %s.\n", selfID, i + 1, requestingServerID, nowt);
			if (sentLen < 0) {
				perror("send() failed");
				exit(-1);
			} else if (sentLen != sizeof(chrono::time_point<std::chrono::high_resolution_clock>)*2) {
				perror("send() sent unexpected number of bytes");
				exit(-1);
			}
		}
		close(clntSock);
	}
	// cout << "gonna stop receiving" << endl;
	close(servSock);

}

void writeSyncTableToFile() {
	long long means[K], variance[K];
	long long ts = 0;
	for(auto i=0;i<K;i++) {
		for(auto j=0;j<N;j++) {
			ts += SyncTable[j][i];
			// cout << ts << endl;
		}
		means[i] = ts/(N + 0.0);
		ts = 0;
	}
	for(auto i=0;i<K;i++) {
		for(auto j=0;j<N;j++) {
			ts += (SyncTable[j][i] - means[i])*(SyncTable[j][i] - means[i]);
		}
		variance[i] = ts/(N + 0.0);
		ts = 0;
	}
	fprintf(pFile, "\n\n          ");
	for(auto i=0; i<K; i++) {
		fprintf(pFile, "Round %2d    |  ", i+1);
	}
	fprintf(pFile, "\n");
	for(auto i=0;i<N;i++) {
		fprintf(pFile, "P %3d |   ", i);
		for(auto j=0;j<K;j++) {
			fprintf(pFile, "%10d  |  ", SyncTable[i][j]);
		}
		fprintf(pFile, "\n");
	}
	fprintf(pFile, "Mean  |   ");
	for(auto i=0;i<K;i++) {
		fprintf(pFile, "%10d  |  ", means[i]);
	}
	fprintf(pFile, "\n");
	fprintf(pFile, "Var   |   ");
	for(auto i=0;i<K;i++) {
		fprintf(pFile, "%10d  |  ", variance[i]);
	}

}