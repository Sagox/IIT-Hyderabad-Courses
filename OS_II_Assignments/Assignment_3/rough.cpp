#include <iostream>
#include <vector>
#include <fstream>
#include <unistd.h>
#include <string>
#include <time.h>
#include <semaphore.h>
#include <random>

using namespace std;

string get_formatted_time() {
   time_t now = time(0);
   tm *ltm = localtime(&now);
   char current_time[9];
   sprintf(current_time, "%.2d:%.2d:%.2d", ltm->tm_hour, ltm->tm_min, ltm->tm_sec);
   return string(current_time);
}
int main() {
   // current date/time based on current system
   printf("%s\n", get_formatted_time().c_str());
}