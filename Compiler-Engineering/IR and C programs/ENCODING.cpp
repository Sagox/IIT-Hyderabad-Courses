#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#define ll long long
using namespace std;

void enc(string &a) {
	ll len = a.size();
	char cur = a[0];
	for(auto i=1;i<len;i++) {
		if(a[i] == cur)
			a[i] = '0';
		else cur = a[i];
	}
}

string findSum(string str1, string str2) 
{ 
    if (str1.length() > str2.length()) 
        swap(str1, str2); 
  
    string str = ""; 
  
    int n1 = str1.length(), n2 = str2.length(); 
  
    reverse(str1.begin(), str1.end()); 
    reverse(str2.begin(), str2.end()); 
  
    int carry = 0; 
    for (int i=0; i<n1; i++) 
    { 
        int sum = ((str1[i]-'0')+(str2[i]-'0')+carry); 
        str.push_back(sum%10 + '0'); 
  
        carry = sum/10; 
    } 
    for (int i=n1; i<n2; i++) 
    { 
        int sum = ((str2[i]-'0')+carry); 
        str.push_back(sum%10 + '0'); 
        carry = sum/10; 
    } 
    if (carry) 
        str.push_back(carry+'0'); 
  
    reverse(str.begin(), str.end()); 
  
    return str; 
} 

ll mod(string num, ll a) 
{ 
    ll res = 0; 
      for (ll i = 0; i < num.length(); i++) 
         res = (res*10 + (int)num[i] - '0') %a; 
  
    return res; 
}

bool isSmaller(string str1, string str2) 
{ 
    int n1 = str1.length(), n2 = str2.length(); 
  
    if (n1 < n2) 
    return true; 
    if (n2 < n1) 
    return false; 
  
    for (int i=0; i<n1; i++) 
    if (str1[i] < str2[i]) 
        return true; 
    else if (str1[i] > str2[i]) 
        return false; 
  
    return false; 
} 
  
string findDiff(string str1, string str2) 
{ 
    if (isSmaller(str1, str2)) 
        swap(str1, str2); 
  
    string str = ""; 
  
    int n1 = str1.length(), n2 = str2.length(); 
  
    reverse(str1.begin(), str1.end()); 
    reverse(str2.begin(), str2.end()); 
      
    int carry = 0; 
  
    for (int i=0; i<n2; i++) 
    { 
          
        int sub = ((str1[i]-'0')-(str2[i]-'0')-carry); 
          
        if (sub < 0) 
        { 
            sub = sub + 10; 
            carry = 1; 
        } 
        else
            carry = 0; 
  
        str.push_back(sub + '0'); 
    } 
  
    for (int i=n2; i<n1; i++) 
    { 
        int sub = ((str1[i]-'0') - carry); 
          
        if (sub < 0) 
        { 
            sub = sub + 10; 
            carry = 1; 
        } 
        else
            carry = 0; 
              
        str.push_back(sub + '0'); 
    } 
  
    reverse(str.begin(), str.end()); 
  
    return str; 
}

string multiply(string num1, string num2) 
{ 
    int len1 = num1.size(); 
    int len2 = num2.size(); 
    if (len1 == 0 || len2 == 0) 
    return "0"; 
  
    vector<int> result(len1 + len2, 0); 
  
    int i_n1 = 0;  
    int i_n2 = 0;  
      
    for (int i=len1-1; i>=0; i--) 
    { 
        int carry = 0; 
        int n1 = num1[i] - '0'; 
  
        i_n2 = 0;  
          
        for (int j=len2-1; j>=0; j--) 
        { 
            int n2 = num2[j] - '0'; 
  
            int sum = n1*n2 + result[i_n1 + i_n2] + carry; 
  
            carry = sum/10; 
  
            result[i_n1 + i_n2] = sum % 10; 
  
            i_n2++; 
        } 
  
        if (carry > 0) 
            result[i_n1 + i_n2] += carry; 
  
        i_n1++; 
    } 
  
    int i = result.size() - 1; 
    while (i>=0 && result[i] == 0) 
    i--; 
  
    if (i == -1) 
    return "0"; 
  
    string s = ""; 
      
    while (i >= 0) 
        s += std::to_string(result[i--]); 
  
    return s; 
} 

string divideByTwo(string a) {
	string ta = "";
	bool c = 0;
	ll len = a.size();
	for(auto i=0;i<len;i++) {
		ta.push_back((c*10 + a[i])/2);
		c = (c*10 + a[i])%2;
	}
	if(ta[0] == 0) return ta.substr(1,len-1);
	else return ta;
}

void solve() {
	ll nl, nr;
	cin >> nl;
	string l,r;
	l.resize(nl);
	cin >> l;
	cin >> nr;
	r.resize(nr);
	cin >> r;
	ll m = 1000000007;
	string one = "1";
	ll ltr = mod(findSum(l,r), m);
	ll rtr = mod(findSum(findDiff(l, r), one), m);
	if(ltr%2 == 0)
		ltr = ltr/2;
	else
		rtr = rtr/2;
	string left = to_string(ltr), right = to_string(rtr);
	cout <<  mod(multiply(left,right), m) << endl;	
}

int main()
{
	long long t;
	cin >> t;
	for(auto i=0;i<t;i++) {
		solve();
	}
}