#include <iostream>
#include <cstdlib>

using namespace std;

int main()
{
	int a = 5;
	if(a == 4) {
		int a = 4;
		cout << a << endl;
		if(true) {
			cout << a << endl;
		}
	} else {
		cout << a << endl;
	}
}