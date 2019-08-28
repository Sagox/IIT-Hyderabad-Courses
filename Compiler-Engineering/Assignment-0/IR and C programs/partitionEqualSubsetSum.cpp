#include <iostream>
#include <vector>
#include <numeric>

using namespace std;

bool canPartition(vector<int>& nums) {
        int len = nums.size(), total = accumulate(nums.begin(), nums.end(), 0); 
        if(total%2 == 1)
                return false;
        vector<vector<bool>> dp(len, vector<bool>(total/2+1, false));
        // init values
        for(auto i=0;i<len;i++) {
                dp[i][total/2] = true;
        }
        for(auto i=1;i<len;i++) {
                for(auto j=0;j<total/2+1;j++){
                        if(total/2 == j + nums[i] || ((nums[i] + j < total/2 + 1) && (dp[i-1][j + nums[i]])) || dp[i-1][j])
                                dp[i][j] = true;
                }
        }

        return dp[len-1][0];
}

int main()
{
	vector<int> a = {100,100,100,100,100,100,100,100};
	cout << canPartition(a) << endl;
}
