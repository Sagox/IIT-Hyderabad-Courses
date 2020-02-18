#include <iostream>
#include <string.h>
#include <chrono>
#include <ctime>

using namespace std;

void writeSyncTableToFile() {
	fprintf(stdout, "\n\n          ");
	for(auto i=0; i<5; i++) {
		fprintf(stdout, "Round %d     ", i+1);
	}
}
int main()
{
	// auto start = chrono::high_resolution_clock::now();
	// auto startp = start + chrono::milliseconds(5);
	// auto dur = startp - start;
	// auto now_c = chrono::high_resolution_clock::to_time_t(start);
	// auto now_cp = chrono::high_resolution_clock::to_time_t(startp);
	// // cout << ctime(&now_c) << endl;
	// cout << now_c << endl;
	writeSyncTableToFile();
}