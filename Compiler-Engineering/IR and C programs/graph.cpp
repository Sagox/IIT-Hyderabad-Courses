#include <iostream>
#include <cstdlib>
#include <vector>
#include <assert.h>
#include <algorithm>

using namespace std;

class graph {
public:
	int numberOfVertices;
	vector<pair<int, int>> edges; 
graph() {
	numberOfVertices = 0;
}

void addVertex() {
	numberOfVertices ++;
}

void addEdge(int u, int v) {
	assert(numberOfVertices > max(u, v));
	edges.push_back(make_pair(u, v));
}

bool isEdge(int u, int v) {
	return (find(edges.begin(), edges.end(), make_pair(u, v)) != edges.end() || find(edges.begin(), edges.end(), make_pair(v, u)) != edges.end());
}

void printEdges() {
	for(auto i=0;i<edges.size();i++) {
		cout << edges[i].first << " " << edges[i].second << endl;
	}
}

vector<int> getNeighbours(int u) {
	vector<int> neighbours;
	for(auto i=0;i<numberOfVertices;i++) {
		if(i == u)
			continue;
		if(isEdge(u, i))
			neighbours.push_back(i);
	}
	return neighbours;
}

void DFSUtil(int u, vector<bool> &visited, vector<int> &parent) {
	visited[u] = true;
	cout << u << " ";
	vector<int> neighbours = getNeighbours(u);
	for(auto i=0;i<neighbours.size();i++) {
		if(!visited[neighbours[i]]) {
			parent[neighbours[i]] = u;
			DFSUtil(neighbours[i], visited, parent);
		}
	}
}

void DFS(int u) {
	vector<bool> visited(numberOfVertices);
	vector<int> parent(numberOfVertices);
	for(auto i=0;i<numberOfVertices;i++) {
		visited[i] = false;
	}
	DFSUtil(u, visited, parent);
}
};

int main()
{
	graph G;
	G.addVertex();
	G.addVertex();
	G.addVertex();
	G.addVertex();
	G.addVertex();
	G.addVertex();
	G.addVertex();
	G.addVertex();
	G.addVertex();
	G.addVertex();
	G.addEdge(0, 1);
	G.addEdge(0, 2);
	G.addEdge(1, 3);
	G.addEdge(1, 4);
	G.addEdge(2, 8);
	G.addEdge(2, 7);
	G.addEdge(4, 5);
	G.addEdge(4, 6);
	G.addEdge(7, 9);
	// G.printEdges();
	G.DFS(1);
	return 0;
}