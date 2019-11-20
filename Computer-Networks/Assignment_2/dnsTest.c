#include <stdio.h>
#include <string.h>
#include <netdb.h>
#include <arpa/inet.h>

union addr {
  struct sockaddr         sa;
  struct sockaddr_in      s4;
  struct sockaddr_in6     s6;
  struct sockaddr_storage ss;
};

int main(int argc, char **argv) {

	//DNS
	struct addrinfo hints;
	struct addrinfo *result, *temp;

	char domName[50];
	scanf("%s", domName);
	memset(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = IPPROTO_TCP;
	hints.ai_flags = AI_CANONNAME;
	int s = getaddrinfo(domName, NULL, &hints, &result);

	union addr servAddr;
	memset(domName, 0, 50);
	if(result->ai_family == AF_INET)
		servAddr.s4 = *((struct sockaddr_in*)((result->ai_addr)));
	else
		servAddr.s6 = *((struct sockaddr_in6*)((result->ai_addr)));
	printf("%d %s\n", s, inet_ntop(servAddr.s6.sin6_family, &(servAddr.s6.sin6_addr), domName, INET6_ADDRSTRLEN));
	// printf("%d %d %s\n", s, myaddr.s4.sin_family, inet_ntop(AF_INET, &(myaddr.s4.sin_addr), domName, INET_ADDRSTRLEN));

	// printf("%d %d %s\n", s, ((struct sockaddr_in*)(temp->ai_addr))->sin_family, inet_ntoa(((struct sockaddr_in*)(temp->ai_addr))->sin_addr));
	// printf("%d %d %s\n", s, temp->ai_addr->sa_family, temp->ai_addr->sa_data);


	// for (temp = result; temp != NULL; temp = temp->ai_next) {
		// printf("%d %d %s\n", s, ((struct sockaddr_in6*)(temp->ai_addr))->sin6_family, inet_ntop(AF_INET6, &(((struct sockaddr_in6*)(temp->ai_addr))->sin6_addr), domName, INET6_ADDRSTRLEN));
	// 	printf("%d %d %s\n", s, ((struct sockaddr_in*)(temp->ai_addr))->sin_family, inet_ntoa(((struct sockaddr_in*)(temp->ai_addr))->sin_addr));
	// 	printf("%d %d %s\n", s, temp->ai_addr->sa_family, temp->ai_addr->sa_data);
	// }

}