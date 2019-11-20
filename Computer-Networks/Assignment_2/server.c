#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <arpa/inet.h>

#define BUFSIZE 10

static const int MAXPENDING = 5; // Maximum outstanding connection requests

int main(int argc, char ** argv) {

	if (argc != 2) {
		perror("<server port>");
		exit(-1);
	}

	in_port_t servPort = atoi(argv[1]); // Local port

	// create socket for incoming connections
	int servSock;
	if ((servSock = socket(AF_INET6, SOCK_STREAM, IPPROTO_TCP)) < 0)
	{
		perror("socket() failed");
		exit(1);
	}

	struct sockaddr_in6 serveraddr, clientaddr;
	int addrlen=sizeof(clientaddr);
	char str[INET6_ADDRSTRLEN];
	memset(&serveraddr, 0, sizeof(serveraddr));
	serveraddr.sin6_family = AF_INET6;
	serveraddr.sin6_port   = htons(servPort);
	serveraddr.sin6_addr   = in6addr_any;
	// Set local parameters

	// Bind to the local address

	if (bind(servSock, (struct sockaddr *)&serveraddr, sizeof(serveraddr)) < 0) {
		perror("bind() failed");
		exit(1);
	}

	// Listen to the client
	if (listen(servSock, MAXPENDING) < 0) {
		perror("listen() failed");
		exit(-1);
	}
	int sdconn = -1;
	// Server Loop
	for (;;) {

		if ((sdconn = accept(servSock, NULL, NULL)) < 0)
		{
			perror("accept() failed");
			exit(1);
		}
		else
		{
			getpeername(sdconn, (struct sockaddr *)&clientaddr, &addrlen);
			if(inet_ntop(AF_INET6, &clientaddr.sin6_addr, str, sizeof(str))) {
				printf("Client address is %s\n", str);
				printf("Client port is %d\n", ntohs(clientaddr.sin6_port));
			}
		}

		// Receive data
		char buffer[BUFSIZE];
		memset(buffer, 0, BUFSIZE);
		ssize_t recvLen = recv(sdconn, buffer, BUFSIZE - 1, 0);
		if (recvLen < 0) {
			perror("recv() failed");
			exit(-1);
		}
		buffer[recvLen] = '\n';
		fputs(buffer, stdout);

		while (recvLen > 0) {
			// printf("Begining of Client Loop\n");
			// Send the received data back to client
			ssize_t sentLen = send(sdconn, buffer, recvLen, 0);
			if (sentLen < 0) {
				perror("send() failed");
				exit(-1);
			} else if (sentLen != recvLen) {
				perror("send() sent unexpected number of bytes");
				exit(-1);
			}

			// See if there is more data to receive
			memset(buffer, 0, BUFSIZE);
			recvLen = recv(sdconn, buffer, BUFSIZE, 0);
			printf("%ld\n", recvLen);
			if (recvLen < 0) {
				perror("recv() failed");
				exit(-1);
			} else if (recvLen > 0) { // some data was remaining
				buffer[recvLen] = '\n';
				fputs(buffer, stdout);
			}
			// printf("End of Client Loop\n");
		}

		close(sdconn);
		// printf("End of Server Loop\n");
	}

	printf("End of Program\n");

}