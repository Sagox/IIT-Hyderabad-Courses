#include <iostream>
#include <vector>
#define ll long long int
using namespace std;

int dsum(ll n) 
{  
    int sum = 0; 
    while (n != 0) {
    	sum = sum + n % 10;
    	n = n/10;
    }
 	return sum; 
 } 

void solve() {
	ll N;
	int ans = 0, temp = 0;
	cin >> N;
	int A[N];
	for(auto i=0;i<N;i++) {
		cin >> A[i];
	}
	for(auto i=0;i<N;i++) {
		for(auto j=i+1;j<N;j++) {
			temp = dsum(A[i]*A[j]);
			if(ans < temp)
				ans = temp;
		}
	}
	cout << ans << endl;
}

int main()
{
	int t;
	cin >> t;
	for(auto i=0;i<t;i++) {
		solve();
	}
}