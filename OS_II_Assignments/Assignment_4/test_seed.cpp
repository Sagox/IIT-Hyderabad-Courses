#include <iostream>
#include <vector>
#include <fstream>
#include <unistd.h>
#include <string>
#include <time.h>
#include <chrono>     
#include <semaphore.h>
#include <random>

using namespace std;

int main() {
	default_random_engine generatorCS(random_device{}());
	exponential_distribution<double> distributionCS(5);
	for(auto i = 0;i<10;i++) {
		cout << distributionCS(generatorCS)<< endl;
	}
}