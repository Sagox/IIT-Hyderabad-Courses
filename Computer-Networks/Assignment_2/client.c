#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <arpa/inet.h>

#define BUFSIZE 1024

int main(int argc, char **argv) {

	if (argc != 4) {
		perror("<Server Address> <Server Port> <Echo Word>");
		exit(-1);
	}
	
	// Set port number as given by user or as default 12345
	// in_port_t servPort = (argc == 3) ? atoi(argv[2]) : 12345;
	char *servIP = argv[1];
	char *echoString = argv[3];

	// Set port number as user specifies
	in_port_t servPort = atoi(argv[2]);

	struct addrinfo hints;
	struct addrinfo *result, *rp;

	memset(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = AF_UNSPEC; // IPv4 or v6
	hints.ai_socktype = SOCK_STREAM;// Hardcoded TCP as dummy
	hints.ai_protocol = IPPROTO_TCP; // Hardcoded TCP as dummy
	hints.ai_flags = AI_CANONNAME; // I want canonical name!!
	
	int s = getaddrinfo(servIP, NULL, &hints, &result);
	
	//Creat a socket
	int sockfd = socket(result->ai_addr->sa_family, SOCK_STREAM, IPPROTO_TCP);
	if (sockfd < 0) {
		perror("socket() failed");
		exit(-1);
	}

	((struct sockaddr_in*)(result->ai_addr))->sin_port = htons(servPort);
	
	// Connect to server
	if (connect(sockfd, result->ai_addr, result->ai_addrlen) < 0) {
		perror("connect() failed");
		exit(-1);
	}
	
	size_t echoStringLen = strlen(echoString);
	
	// Send string to server
	ssize_t sentLen = send(sockfd, echoString, echoStringLen, 0);
	if (sentLen < 0) {
		perror("send() failed");
		exit(-1);
	} else if (sentLen != echoStringLen) {
		perror("send(): sent unexpected number of bytes");
		exit(-1);
	}

	// Receive string from server
	unsigned int totalRecvLen = 0;

	fputs("Received: ", stdout);
	while (totalRecvLen < echoStringLen) {
		char buffer[BUFSIZE];
		memset(buffer, 0, BUFSIZE);
		ssize_t recvLen = recv(sockfd, buffer, BUFSIZE - 1, 0);
		if (recvLen < 0) {
			perror("recv() failed");
			exit(-1);
		} else if (recvLen == 0) {
			perror("recv() connection closed prematurely");
			exit(-1);
		}
	
		totalRecvLen += recvLen;
		buffer[recvLen] = '\n';
		fputs(buffer, stdout);	
	}
	
	close(sockfd);
	exit(0);
}
