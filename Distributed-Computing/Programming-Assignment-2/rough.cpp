#include <arpa/inet.h>
#include <cmath>
#include <fstream>
#include <iostream>
#include <mutex>
#include <netinet/in.h>
#include <pthread.h>
#include <random>
#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>
#include <vector>
#include <algorithm>
#include <sstream>

using namespace std;

void *threadfunc(void *params) {
	int *y = ((int*)params);
	*y = 500;
	return NULL;
}

int main()
{
	// int x = 0, N = 10;
	// pthread_t mythread;
	// pthread_create(&mythread, NULL, threadfunc, (void*)(&x));
	// pthread_join(mythread, NULL);
	// cout << x << endl;
	// srand(time(0));
	// vector<int> mynums;
	// for(auto i=0;i<10;i++)
	// 	mynums.push_back(i);
	// random_shuffle(mynums.begin(), mynums.end());
	// for(auto i=0;i<10;i++)
	// 	cout << mynums[i] << endl;
	string a = "213#2";
	stringstream check1(a);
	string b;
	getline(check1, b, '#');
	cout << b << endl;
	getline(check1, b, '#');
	cout << b << endl;
}