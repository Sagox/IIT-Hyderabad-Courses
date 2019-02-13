#include<iostream>
#include<assert.h>
#include<vector>

using namespace std;

// Function for checking existence of edge

bool didWin(vector<vector<int>> graph, int a, int b) {
  int i, s = graph[a].size();
  for(i = 0;i < s;i++) {
    if(graph[a][i] == b)
      return true;
  }
  return false;
}

int main()
{
  int n, i, temp1, temp2, j;
  cin >> n;
  vector<vector<int>> graph(n);

// Creating the graph
// Arbitrarily call the players 1 - n  
  for(i = 0;i < n*(n-1)/2;i++) {
    cin >> temp1 >> temp2;
    graph[temp1 - 1].push_back(temp2 - 1);
  }

  vector<int> hamiltonian_path;
  hamiltonian_path.push_back(0);
  for(i = 1;i < n;i++)
  {
    if(didWin(graph ,i,hamiltonian_path.front()))
      hamiltonian_path.insert(
      hamiltonian_path.begin(), i);
    else if(didWin(graph, hamiltonian_path.back(), i))
      hamiltonian_path.push_back(i);
    else {
      for(j=0;j<hamiltonian_path.size();j++) {
        if(didWin(graph,j,i) && didWin(graph,i,j+1)) {
          hamiltonian_path.insert(
          hamiltonian_path.begin()+j+1,i);
          break;
        }
      }
    }
  }
  for(i = 0;i < n;i++) {
    cout<<hamiltonian_path[i]+1 << " ";
  }
  cout << endl;
  
// rename the players in the order of 
// occurence in the path
}