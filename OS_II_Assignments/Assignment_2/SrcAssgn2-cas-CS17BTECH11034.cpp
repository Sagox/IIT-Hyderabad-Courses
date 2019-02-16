#include <iostream>
#include <pthread.h>
#include <mutex>
#include <chrono>
#include <fstream>
#include <vector>

using namespace std;

mutex m;

int locker = 0;

int compare_and_swap(int *value, int expected, int new_value) {

	lock_guard<mutex> guard(m);
	int temp = *value;
	if(*value == expected)
		*value = new_value;
	return temp;
}

void *testCS(void *param) {

	auto reqEnterTime = chrono::system_clock::now();
	while(compare_and_swap(&locker, 0, 1));
	auto actEnterTime = chrono::system_clock::now();
	auto this_id = pthread_self();
	cout << this_id << endl;
	cout << this_id << endl;
	cout << this_id << endl;

	lock_guard<mutex> guard(m);
	locker = 0;
	auto exitTime = chrono::system_clock::now();
}
int main()
{
	int message = 1, n;
	cin >> n;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_attr_setscope(&attr, PTHREAD_SCOPE_PROCESS);
	vector <pthread_t> threads(n);
	for(auto i=0;i<n;i++) {
		pthread_create(&threads[i], &attr, testCS, &message);
	}
	for(auto i=0;i<n;i++) {
		pthread_join(threads[i], NULL);
	}
}