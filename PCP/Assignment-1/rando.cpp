#include <bits/stdc++.h>

using namespace std;

void foo(void* param) {
	pair<long, long> bar = *((pair<long, long>*)param);
	cout << bar.first << " " << bar.second << endl;
}

int main() {
	pair<long, long> bar = make_pair(1, 10000000);
	foo(&bar);
	cout << "mychar " << X << endl; 
	return 0;
}