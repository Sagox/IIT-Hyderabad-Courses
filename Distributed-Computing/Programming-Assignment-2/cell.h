#ifndef _CELL_H
#define _CELL_H

using namespace std;

enum Colour { White = 1, Red = 2, Blue = 3, Black = 4 };

// this is for storing the information og the cell
struct cellInfo {
  int id;
  int parent;
  // This is for the implementatin of the tree based termination
  // detection algorithms
  vector<int> children;
  vector<bool> tokenReceived;
  bool haveToken = false;
  Colour cellColour = White;
  Colour nodeColour = White;
  // to avoid data race between reading and writing
  // the colour of cells
  pthread_mutex_t *lock;
};

// message meaning and format between cells
// every message begins with the sender id.
// this is followed by a delimiting #.
// that is followed by one of the following numbers,
// 1 - White Cell
// 2 - Red Cell
// 3 - Blue Cell
// 4 - White Token
// 5 - Black Token
// 6 - from root to leaves to begin token sending again

// function to receive sync requests and respond appropriately
void *receiveThread(void *id);

// function to send sync requests, receive response and update
// the error factor correspondingly
void *cellProcess(void *params);

void printVector(vector<int> &parent) {
  for (auto i = 0; i < parent.size(); i++)
    cout << parent[i] << " ";
  cout << endl;
}
#endif