#include <iostream>
#include <vector>

using namespace std;


int main()
{
	long t, w;
	cin >> t;
	while(t > 0) {
		t--;
		vector<long> cost(26);
		for(auto i=0;i<26;i++)
			cin >> cost[i];
		cin >> w;
		vector<string> sols(w+1);
		vector<bool> isPossible(w+1);
		isPossible[0] = true;
		sols[0] = "";
		for(auto i=1;i<=w;i++) {
			char curChar = '-';
			for(auto j=0;j<26;j++) {
				if(w >= cost[j] && isPossible[w-cost[j]])
					curChar = 'a' + j;
			}
			if(curChar != '-') {
				isPossible[w] = true;
				sols[w] = string(1, curChar);
				sols[w] += sols[w-cost[curChar-'a']];
			}
		}
		cout << sols[w] << endl;

	}
}