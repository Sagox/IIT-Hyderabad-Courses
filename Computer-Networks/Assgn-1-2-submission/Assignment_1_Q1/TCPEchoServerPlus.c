#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define BUFSIZE 10

static const int MAXPENDING = 5; // Maximum outstanding connection requests

int main(int argc, char ** argv) {

	if (argc != 2) {
		perror("<server port>");
		exit(-1);
	}
	char helpMessage[] = "Available Commands\nHELP\tPrints this message\nTIME\tPrints the current time in the server time zone\nNQUERY\tPrints the number of queries made on the server\n";
	in_port_t servPort = atoi(argv[1]); // Local port
	int nq = 0;
	// create socket for incoming connections
	int servSock;
	if ((servSock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0) {
		perror("socket() failed");
		exit(-1);
	}
    time_t mytime = time(NULL);
    char * time_str = ctime(&mytime);
    time_str[strlen(time_str)-1] = '\0';
	// Set local parameters
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

	// Server Loop
	for (;;) {
		struct sockaddr_in clntAddr;
		socklen_t clntAddrLen = sizeof(clntAddr);

		// Wait for a client to connect
		int clntSock = 
				accept(servSock, (struct sockaddr *) &clntAddr, &clntAddrLen);
		if (clntSock < 0) {
			perror("accept() failed");
			exit(-1);
		}

		char clntIpAddr[INET_ADDRSTRLEN];
		if (inet_ntop(AF_INET, &clntAddr.sin_addr.s_addr, 
				clntIpAddr, sizeof(clntIpAddr)) != NULL) {
			printf("----\nHandling client %s %d\n", 
					clntIpAddr, ntohs(clntAddr.sin_port));
		} else {
			puts("----\nUnable to get client IP Address");
		}

		// Receive data
		char buffer[BUFSIZE];
		memset(buffer, 0, BUFSIZE);
		ssize_t recvLen = recv(clntSock, buffer, BUFSIZE - 1, 0);
		char nqstring[10];
		if (recvLen < 0) {
			perror("recv() failed");
			exit(-1);
		} else if(strcmp(buffer, "HELP") == 0) {
			ssize_t sentLen = send(clntSock, helpMessage, strlen(helpMessage), 0);
			if (sentLen < 0) {
				perror("send() failed");
				exit(-1);
			} else if (sentLen != strlen(helpMessage)) {
				perror("send() sent unexpected number of bytes");
				exit(-1);
			}
		} else if(strcmp(buffer, "TIME") == 0) {
		    time_str = ctime(&mytime);
		    time_str[strlen(time_str)-1] = '\0';
		    char tempc[200] = "The current time is: ";
		    strcat(tempc, time_str);
		    strcat(tempc, "\n");
			ssize_t sentLen = send(clntSock, tempc, strlen(tempc), 0);
			if (sentLen < 0) {
				perror("send() failed");
				exit(-1);
			} else if (sentLen != strlen(tempc)) {
				perror("send() sent unexpected number of bytes");
				exit(-1);
			}
		} else if(strcmp(buffer, "NQUERY") == 0) {
			memset(nqstring, 0, strlen(nqstring));
			sprintf(nqstring, "%d\n", nq);
			ssize_t sentLen = send(clntSock, nqstring, strlen(nqstring), 0);
			if (sentLen < 0) {
				perror("send() failed");
				exit(-1);
			} else if (sentLen != strlen(nqstring)) {
				perror("send() sent unexpected number of bytes");
				exit(-1);
			}
		} else {
			ssize_t sentLen = send(clntSock, buffer, strlen(buffer), 0);
			if (sentLen < 0) {
				perror("send() failed");
				exit(-1);
			} else if (sentLen != strlen(buffer)) {
				perror("send() sent unexpected number of bytes");
				exit(-1);
			}
		}
		nq++;
		while (recvLen > 0) {
			memset(buffer, 0, BUFSIZE);
			recvLen = recv(clntSock, buffer, BUFSIZE, 0);
			if (recvLen < 0) {
				perror("recv() failed");
				exit(-1);
			} else if(strcmp(buffer, "HELP") == 0) {
				ssize_t sentLen = send(clntSock, helpMessage, strlen(helpMessage), 0);
				if (sentLen < 0) {
					perror("send() failed");
					exit(-1);
				} else if (sentLen != strlen(helpMessage)) {
					perror("send() sent unexpected number of bytes");
					exit(-1);
				}
			} else if(strcmp(buffer, "TIME") == 0) {
			    time_str = ctime(&mytime);
			    time_str[strlen(time_str)-1] = '\0';
			    char tempc[200] = "The current time is: ";
			    strcat(tempc, time_str);
			    strcat(tempc, "\n");
				ssize_t sentLen = send(clntSock, tempc, strlen(tempc), 0);
				if (sentLen < 0) {
					perror("send() failed");
					exit(-1);
				} else if (sentLen != strlen(tempc)) {
					perror("send() sent unexpected number of bytes");
					exit(-1);
				}
			} else if(strcmp(buffer, "NQUERY") == 0) {
				memset(nqstring, 0, strlen(nqstring));
				sprintf(nqstring, "%d\n", nq);
				ssize_t sentLen = send(clntSock, nqstring, strlen(nqstring), 0);
				if (sentLen < 0) {
					perror("send() failed");
					exit(-1);
				} else if (sentLen != strlen(nqstring)) {
					perror("send() sent unexpected number of bytes");
					exit(-1);
				}
			} else {
				ssize_t sentLen = send(clntSock, buffer, strlen(buffer), 0);
				if (sentLen < 0) {
					perror("send() failed");
					exit(-1);
				} else if (sentLen != strlen(buffer)) {
					perror("send() sent unexpected number of bytes");
					exit(-1);
				}
			}
			nq++;
		}
		close(clntSock);
		// printf("End of Server Loop\n");
	}

	printf("End of Program\n");

}