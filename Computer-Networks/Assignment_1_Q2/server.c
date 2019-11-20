#include <arpa/inet.h>
#include <errno.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>

#define BUFSIZE 1024

static const int MAXPENDING = 5; // Maximum outstanding connection requests

int main(int argc, char ** argv) {

	if (argc != 3) {
		perror("<server port> <max clients>");
		exit(-1);
	}
	char messageFromClient[] = "New message from Client: ";
	char message[200] = "Welcome to CS17BTECH11034's Server\nYour ID is: ", buffer[BUFSIZE]; 
	in_port_t servPort = atoi(argv[1]); // Local port
	int maxClients = atoi(argv[2]);

	// create socket for incoming connections
	int servSock, clients[maxClients], curSock, tempSock, activity;
	fd_set allSockets;

	if ((servSock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0) {
		perror("socket() failed");
		exit(-1);
	}

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

    for (int i=0;i<maxClients;i++)   
    {   
        clients[i] = 0;   
    }   

	// Server Loop
	struct sockaddr_in curSockAddr;
	socklen_t curSockAddrLen = sizeof(curSockAddr);
	int curMaxSocketFD;

	for (;;) {
		FD_ZERO(&allSockets);
		FD_SET(servSock, &allSockets); 
		curMaxSocketFD = servSock;

        for (int i=0;i<maxClients;i++) {   
            //socket descriptor  
            tempSock = clients[i];   
                 
            //if valid socket descriptor then add to read list  
            if(tempSock > 0)   
                FD_SET(tempSock , &allSockets);   
                 
            //highest file descriptor number, need it for the select function  
            if(tempSock > curMaxSocketFD)   
                curMaxSocketFD = tempSock;   
        }
        printf("%s\n", "no act yet");
        activity = select(curMaxSocketFD + 1 , &allSockets , NULL , NULL , NULL);
        if ((activity < 0) && (errno!=EINTR)) {   
            printf("select error");   
        }   
             
        //If something happened on the master socket ,  
        //then its an incoming connection  
        if (FD_ISSET(servSock, &allSockets)) {   
            if ((curSock = accept(servSock, (struct sockaddr *)&curSockAddr, (socklen_t*)&curSockAddrLen))<0) {   
                perror("accept");   
                exit(EXIT_FAILURE);   
            }   
             
            //inform user of socket number - used in send and receive commands  
            printf("New connection , socket fd is %d , ip is : %s , port : %d\n",
            	curSock , inet_ntoa(curSockAddr.sin_addr) , ntohs(curSockAddr.sin_port));   
           	
            //send new connection greeting message
            int curID = 0;
            for (int i=0;i<maxClients;i++) {   
                //if position is empty  
                if( clients[i] == 0 )   
                {   
                    clients[i] = curSock;
                    curID = i;  
                    printf("Adding to list of sockets as %d\n" , i);
                    break;   
                }   
            }
            char index[5];
            memset(index, 0, sizeof(index));
			sprintf(index, "%d", curID);
			char *tmp = strdup(message);
            strcat(tmp, index);
			char mts[1024];
			int cursp = 0;
			cursp += sprintf(mts + cursp, "%s\n", "\nThe following clients are available");
			for(int j=0;j<maxClients;j++) {
				if(clients[j] != 0)
					cursp += sprintf(mts + cursp, "%d\n", j);
			}
			strcat(tmp, mts);
            if(send(curSock, tmp, strlen(tmp), 0) != strlen(message)) {   
                perror("send");   
            }   
			memset(mts, 0, 1024);
                 
            puts("Welcome message sent successfully");   
                 
            //add new socket to array of sockets  
        } 
		memset(buffer, 0, BUFSIZE);
		int recvLen;
        //else its some IO operation on some other socket 
        for (int i=0;i<maxClients;i++) {
            tempSock = clients[i];   
                 
            if (FD_ISSET( tempSock , &allSockets)) { 
                //Check if it was for closing , and also read the  
                //incoming message  
                if ((recvLen = recv(tempSock, buffer, BUFSIZE, 0)) <= 0) {
                    //Somebody disconnected , get his details and print 
                    getpeername(tempSock , (struct sockaddr*)&curSockAddr, (socklen_t*)&curSockAddrLen);   
                    printf("Host disconnected , ip %s , port %d \n" ,  
                          inet_ntoa(curSockAddr.sin_addr) , ntohs(curSockAddr.sin_port));   
                         
                    //Close the socket and mark as 0 in list for reuse  
                    close(tempSock);   
                    clients[i] = 0;
				} else {
					printf("%d\n", recvLen);
					char senderIndex[3];
					char indexToSend[3];
					char *temp = strdup(messageFromClient);
					memset(senderIndex, 0, 3);
					memset(indexToSend, 0, 3);
					sprintf(senderIndex, "%d", i);
					char* delPointer = strchr(buffer, '|');
					if(delPointer == NULL)
						break;
					int indl = strchr(buffer, '|') - buffer + 1;
					memcpy(indexToSend, buffer, indl);
					int indexToSendInt = atoi(indexToSend);
					printf("index to send to%d\n", indexToSendInt);
					if((indexToSendInt > maxClients-1) || clients[indexToSendInt] == 0) {
			            if(send(tempSock, "This specified client is not online\n", BUFSIZE, 0) != BUFSIZE) {   
			                perror("send");   
			            }
					} else {
			            if(send(clients[indexToSendInt], strcat(temp, senderIndex), BUFSIZE, 0) != BUFSIZE) {   
			                perror("send");   
			            }
			            if(send(clients[indexToSendInt], delPointer+1, BUFSIZE, 0) != BUFSIZE) {   
			                perror("send");   
			            }
			            if(send(tempSock, "Your message was sent\n", BUFSIZE, 0) != BUFSIZE) {   
			                perror("send");   
			            }
					}
					printf("%s\n", delPointer+1);
					memset(buffer, 0, BUFSIZE);
        		}
			}
		}
	}
}