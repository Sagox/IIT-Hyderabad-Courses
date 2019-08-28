#include <iostream>
#include <cstdlib>
#include <vector>

bool isNeighbour(int u, int v, std::vector<std::vector<int>> g) {
	for(auto i=0;i<g.size();i++) {
		if((g[i][0] == u && g[i][1] == v) || (g[i][0] == v && g[i][1] == u))
			return true;
	}
	return false;
}

int main()
{
	int n, m, k, tv1, tv2, count;
	std::cin >> n >> m >> k;
	std::vector<std::vector<int>> edges;
	for(auto i=0;i<m;i++) {
		std::cin >> tv1 >> tv2;
		edges.push_back({tv1-1, tv2-1});
	}
	for(auto i=0;i<n;i++){
		for(auto j=i + 1;j<n;j++) {
			count = 0;
			// if(i==j)
			// 	continue;
			for(auto k=0;k<m;k++) {
				if(k==i || k==j)
					continue;
				if(isNeighbour(i, k, edges) && isNeighbour(j, k, edges))
					count ++;
				if(count >= k)
					break;
			}
		if(count >= k)
			break;
		}
	if(count >= k)
		break;
	}
	std::cout << (count >= k ? "YES" : "NO");
}