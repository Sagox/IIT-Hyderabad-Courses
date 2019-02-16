#include <iostream>
#include <pthread.h>
#include <mutex>
#include <chrono>
#include <fstream>
#include <vector>

using namespace std;

mutex m;

bool locker = false;

bool test_and_set(bool *target) {

	lock_guard<mutex> guard(m);
	bool to_return = *target;
	*target = true;
	return to_return;
}

void *testCS(void *param) {

	auto reqEnterTime = chrono::system_clock::now();
	while(test_and_set(&locker));
	auto actEnterTime = chrono::system_clock::now();
	auto this_id = pthread_self();
	cout << this_id << endl;
	cout << this_id << endl;
	cout << this_id << endl;

	lock_guard<mutex> guard(m);
	locker = false;
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