#include <arpa/inet.h>
#include <cmath>
#include <fstream>
#include <iostream>
#include <mutex>
#include <netinet/in.h>
#include <pthread.h>
#include <random>
#include <stdio.h>
#include <string.h>
#include <limits.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>
#include <vector>
#include <algorithm>
#include <sstream>
#include <chrono>

using namespace std;

vector<int> parent;
vector<vector<int>> graph;
int N, Ir, Ib;

// real valued parameters
float Wr, Wb, Lb, Lr, Ls, p, q;


void readInputFromFile() {
  int temp;
  fstream inputFile;
  inputFile.open("inp-params.txt");
  inputFile >> N >> Wr >> Ir >> Wb >> Ib >> Lr >> Lb >> Ls >> p >> q;
  graph.resize(N, vector<int>(N, INT_MAX));
  parent.resize(N, -1);

#ifndef DEBUG_MODE
  cout << "Initial parameters read, reading the graph now" << endl;
#endif

  parent.resize(N, -1);

  string line;
  getline(inputFile, line);
  for (auto i = 0; i < N; i++) {
    getline(inputFile, line);
    istringstream iss(line);
    while (iss >> temp) {
      // cout << i << "---" << temp-1 << endl;
      graph[temp - 1][i] = 1;
      graph[i][temp - 1] = 1;
    }
  }

}
int minKey(int key[], bool mstSet[]) {
  // Initialize min value
  int min = INT_MAX, min_index;

  for (int v = 0; v < N; v++)
    if (mstSet[v] == false && key[v] < min)
      min = key[v], min_index = v;

  return min_index;
}

void primMST(vector<vector<int>> &graph, vector<int> &parent) {
  // Key values used to pick minimum weight edge in cut
  int key[N];

  // To represent set of vertices not yet included in MST
  bool mstSet[N];

  // Initialize all keys as INFINITE
  for (int i = 0; i < N; i++)
    key[i] = INT_MAX, mstSet[i] = false;

  // Always include first 1st vertex in MST.
  // Make key 0 so that this vertex is picked as first vertex.
  key[0] = 0;
  parent[0] = -1; // First node is always root of MST

  // The MST will have V vertices
  for (int count = 0; count < N - 1; count++) {
    // Pick the minimum key vertex from the
    // set of vertices not yet included in MST
    int u = minKey(key, mstSet);

    // Add the picked vertex to the MST Set
    mstSet[u] = true;

    // Update key value and parent index of
    // the adjacent vertices of the picked vertex.
    // Consider only those vertices which are not
    // yet included in MST
    for (int v = 0; v < N; v++)

      // graph[u][v] is non zero only for adjacent vertices of m
      // mstSet[v] is false for vertices not yet included in MST
      // Update the key only if graph[u][v] is smaller than key[v]
      if (graph[u][v] && mstSet[v] == false && graph[u][v] < key[v])
        parent[v] = u, key[v] = graph[u][v];
  }
}


int main()
{
  readInputFromFile();
  primMST(graph, parent);
  for(auto i=0;i<N;i++) {
    cout << i+1 << " ";
    for(auto j=0;j<N;j++) {
      if(parent[j] == i)
        cout << j+1<< " ";
    }
    cout << endl;
  }
}
