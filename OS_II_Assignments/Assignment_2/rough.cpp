#include <iostream>
#include <pthread.h>
#include <stdio.h>
#include <mutex>
#include <chrono>
#include <fstream>
#include <vector>
#include <atomic>
#include <unistd.h>
#include <random>
#include <ctime>
#include <fstream>

using namespace std;


int main()
{
	fstream inputFile;
	inputFile.open("inp-params.txt");
	int n,k,l1,l2;
	inputFile >> n>>k >> l2 >> l1;
	cout << n << endl << k << l2 <<l1;
}