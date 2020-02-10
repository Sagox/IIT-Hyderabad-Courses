#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define BUFSIZE 1024

int main(int argc, char **argv) {

	if (argc != 4) {
		perror("<Server Address> <Server Port> <File Name>");
		exit(-1);
	}
	FILE *fp = fopen(argv[3], "r");
	fseek(fp, 0L, SEEK_END);
	int length = ftell(fp);
	rewind(fp);
	char send_buf[length];
	int ci = 0;
	char temp;
	while((temp = fgetc(fp)) != EOF) {
		send_buf[ci] = temp;
		ci++;
	}

	char *servIP = argv[1];	
	// Set port number as given by user or as default 12345
	// in_port_t servPort = (argc == 3) ? atoi(argv[2]) : 12345;
	
	// Set port number as user specifies
	in_port_t servPort = atoi(argv[2]);
	
	//Creat a socket
	int sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (sockfd < 0) {
		perror("socket() failed");
		exit(-1);
	}
	
	// Set the server address
	struct sockaddr_in servAddr;
	memset(&servAddr, 0, sizeof(servAddr));
	servAddr.sin_family = AF_INET;
	int err = inet_pton(AF_INET, servIP, &servAddr.sin_addr.s_addr);
	if (err <= 0) {
		perror("inet_pton() failed");
		exit(-1);
	}
	servAddr.sin_port = htons(servPort);
	
	// Connect to server
	if (connect(sockfd, (struct sockaddr *) &servAddr, sizeof(servAddr)) < 0) {
		perror("connect() failed");
		exit(-1);
	}
	
	ssize_t sentLen = send(sockfd, send_buf, sizeof(send_buf), 0);
	memset(send_buf, 0, sizeof(send_buf));
	if (sentLen < 0) {
		perror("send() failed");
		exit(-1);
	} else if (sentLen != sizeof(send_buf)) {
		perror("send(): sent unexpected number of bytes");
		exit(-1);
	}
	
	close(sockfd);
	exit(0);
}