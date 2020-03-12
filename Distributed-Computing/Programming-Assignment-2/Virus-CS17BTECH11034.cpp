#include <algorithm>
#include <arpa/inet.h>
#include <cmath>
#include <fstream>
#include <iostream>
#include <limits.h>
#include <mutex>
#include <netinet/in.h>
#include <pthread.h>
#include <random>
#include <sstream>
#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>
#include <vector>

#include "cell.h"

//#define DEBUG_MODE 1
#define BUFSIZE 1024
using namespace std;

// parameters for the model

// integer valued parameters
int N, Ir, Ib;

// real valued parameters
float Wr, Wb, Lb, Lr, Ls, p, q;

vector<vector<int>> graph;
vector<int> parent;
// network parameters
int MAXPENDING, beginLock = 0, roundDone = 0;

// Table to store all the time values after every round
int **SyncTable;

// mutex locks to synchronise the threads at some points
mutex mtx, mtx1;

// file to write output to
FILE *pFile;

// string sent when requesting for synchrnisation
char msg[10] = "";

// function to receive sync requests and respond appropriately
void *receiveThread(void *id);

// function to send sync requests, receive response and update
// the error factor correspondingly
void *cellProcess(void *params);

void primMST(vector<vector<int>> &graph, vector<int> &parent);

void printVector(vector<int> &parent) {
  for (auto i = 0; i < parent.size(); i++)
    cout << parent[i] << " ";
  cout << endl;
}

int minKey(int key[], bool mstSet[]);

void readInputFromFile() {
  int temp;
  fstream inputFile;
  inputFile.open("inp-params.txt");
  inputFile >> N >> Wr >> Ir >> Wb >> Ib >> Lr >> Lb >> p >> q;
  graph.resize(N, vector<int>(N, -1));
// parent.resize(N);
#ifndef DEBUG_MODE
  cout << "Initial parameters read, reading the graph now" << endl;
#endif
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

#ifndef DEBUG_MODE
void verifyInputRead() {
  cout << "N:  " << N << endl;
  cout << "Wr: " << Wr << endl;
  cout << "Ir: " << Ir << endl;
  cout << "Wb: " << Wb << endl;
  cout << "Ib: " << Ib << endl;
  cout << "Lr: " << Lr << endl;
  cout << "Lb: " << Lb << endl;
  cout << "p:  " << p << endl;
  cout << "q:  " << q << endl;
  for (auto i = 0; i < N; i++) {
    cout << i << ": ";
    for (auto j = 0; j < graph[i].size(); j++)
      cout << graph[i][j] << " ";
    cout << endl;
  }
}
#endif

int main() {

  // open output file
  pFile = fopen("out-log.txt", "w");

#ifndef DEBUG_MODE
  cout << "Reading Input" << endl;
#endif
  // get input parameters
  readInputFromFile();

  // input reading verification
#ifndef DEBUG_MODE
  verifyInputRead();
  cout << "Launching threads" << endl;
#endif
  parent.resize(N, -1);
  MAXPENDING = N;
  primMST(graph, parent);
#ifndef DEBUG_MODE
  printVector(parent);
#endif
  // vector of threads
  vector<pthread_t> threadsList(N);

  // vector of ids which identify each cell
  vector<cellInfo> cellInfoVec(N);
  vector<int> infectList(N);
  vector<int> leafList;
  // launch the threads
  for (auto i = 0; i < N; i++) {
    Colour x = White;
    cellInfoVec[i].id = i;
    cellInfoVec[i].parent = parent[i];
    // give each node its children list
    for (auto j = 0; j < parent.size(); j++) {
      if (parent[j] == i)
        cellInfoVec[i].children.push_back(j);
    }
    if(cellInfoVec[i].children.size() == 0)
      leafList.push_back(i);
    cellInfoVec[i].lock = (pthread_mutex_t *)malloc(sizeof(pthread_mutex_t));
    infectList[i] = i;
    // launch each cell process
    pthread_create(&(threadsList[i]), NULL, cellProcess,
                   (void *)(&cellInfoVec[i]));
  }
#ifndef DEBUG_MODE
  cout << "Threads Created" << endl;
#endif
  cout << leafList.size() << endl;
  // infecting random Ir number of the cells by setting their
  // colour to red
  srand(time(0));
  random_shuffle(infectList.begin(), infectList.end());
  for (auto i = 0; i < ceil(N / 10.0); i++) {
    pthread_mutex_lock(cellInfoVec[i].lock);
    cellInfoVec[i].cellColour = Red;
    pthread_mutex_unlock(cellInfoVec[i].lock);
  }

#ifndef DEBUG_MODE
  cout << "Threads Infected" << endl;
#endif

  for (auto i = 0; i < ceil(N / 10.0); i++) {
    pthread_mutex_lock(cellInfoVec[i].lock);
    cellInfoVec[i].cellColour = Blue;
    pthread_mutex_unlock(cellInfoVec[i].lock);
  }

#ifndef DEBUG_MODE
  cout << "Blue Cells Introduced" << endl;
#endif

  // joining pthreads
  for (auto i = 0; i < N; i++) {
    pthread_join(threadsList[i], NULL);
  }
}

void *cellProcess(void *params) {
  // this struct contains information about the cell
  cellInfo *ci = (cellInfo *)params;
  // id of the server
  int selfID = ci->id;
  pthread_t receivingThread;
  pthread_create(&receivingThread, NULL, receiveThread, (void *)ci);
  vector<int> neighbours;
  for (auto i = 0; i < graph[selfID].size(); i++) {
    if (graph[selfID][i] == 1)
      neighbours.push_back(i);
    ci->tokenReceived.push_back(false);
  }
  // fprintf(stdout, "%d\n", ci->colour);
  while (beginLock != N)
    ;

  exponential_distribution<double> distributionR(Lr);
  exponential_distribution<double> distributionB(Lb);
  unsigned seed = chrono::system_clock::now().time_since_epoch().count();
  default_random_engine generator(seed);
  // waiting for all threads to be created
  while (beginLock < N)
    ;
#ifndef DEBUG_MODE
  cout << "Server Process Begin" << endl;
#endif
  in_port_t servPort;
  // local host
  char servIP[10] = "127.0.0.1";
  int sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
  if (sockfd < 0) {
#ifndef DEBUG_MODE
    cout << selfID << " failed" << endl;
#endif
    perror("socket() failed");
    exit(-1);
  }

  struct sockaddr_in servAddr;
  memset(&servAddr, 0, sizeof(servAddr));
  servAddr.sin_family = AF_INET;
  int err = inet_pton(AF_INET, servIP, &servAddr.sin_addr.s_addr);
  if (err <= 0) {
    perror("inet_pton() failed");
    exit(-1);
  }

  // time data structures declaration
  auto nowC = chrono::high_resolution_clock::to_time_t(
      chrono::high_resolution_clock::now());
  char *nows = asctime(localtime(&nowC));
  char nowt[9];
  memset(msg, 0, sizeof(char) * 10);
  sprintf(msg, "%d", selfID);
  sprintf(msg, "%s", "#");

  // This loop is for every round of sending messages to the neighbours
  // whether the cell is blue or red, is determined on every iteration and
  // the corresponding number of messages are sent to random neighbours
  // also, every round we check if all the children nodes have sent white
  // tokens, if so, we send a white token to the parent node, if not already
  // black
  for (auto j = 0;; j++) {
    random_shuffle(neighbours.begin(), neighbours.end());
    pthread_mutex_lock(ci->lock);
    Colour currentColour = ci->cellColour;
    pthread_mutex_unlock(ci->lock);
    sprintf(msg, "%d", (int)ci->cellColour);

    for (auto i = 0;
         i < ceil(neighbours.size() * (ci->cellColour == Red ? p : q) / 100.0);
         i++) {
      // send synchronisation request to all the threads
      if (i == selfID)
        continue;
      servPort = 50000 + neighbours[i];
      servAddr.sin_port = htons(servPort);
      // connect to the server
      while (true) {
        if (connect(sockfd, (struct sockaddr *)&servAddr, sizeof(servAddr)) <
            0) {
          perror("connect() failed");
          // exit(-1);
        } else
          break;
        sleep(1);
      }
      ssize_t sentLen = send(sockfd, msg, strlen(msg), 0);
      nowC = chrono::high_resolution_clock::to_time_t(
          chrono::high_resolution_clock::now());
      nows = asctime(localtime(&nowC));
      strncpy(nowt, nows + 11, 8);
      // fprintf(
      //     pFile,
      //     "Server %d requests %dth clock synchronisation to Server %d at
      //     %s.\n", selfID, requestNumber, i, nowt);
      if (sentLen < 0) {
        perror("send() failed");
        exit(-1);
      } else if (sentLen != strlen(msg)) {
        perror("send(): sent unexpected number of bytes");
        exit(-1);
      }
      if(currentColour == Red)
        ci->nodeColour = Black;
      close(sockfd);
      sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
      if (sockfd < 0) {
        perror("socket() failed");
        exit(-1);
      }
      if (currentColour == Red)
        sleep(distributionR(generator));
      else
        sleep(distributionB(generator));
    }
    bool allTokensReceived = true;
    for(auto i=0;i<ci->children.size();i++) {
      if(!ci->tokenReceived[i]) {
        allTokensReceived = false;
        break;
      }
    }
    if(allTokensReceived) {
      if(selfID == 0 && ci->nodeColour == White) {
        cout << "Termination Initiated" << endl;
        return NULL;
      } else if(selfID == 0) {
        // for(auto k=0;k<leafList.size();k++) {
        //   // reset to white tokens
        // }
      }
      ci->haveToken = true;
      // send token to parent
      servPort = 50000 + ci->parent;
      servAddr.sin_port = htons(servPort);
      // connect to the server
      while (true) {
        if (connect(sockfd, (struct sockaddr *)&servAddr, sizeof(servAddr)) <
            0) {
          perror("connect() failed");
          // exit(-1);
        } else
          break;
        sleep(1);
      }
      memset(msg, 0, sizeof(char) * 10);
      sprintf(msg, "%d", selfID);
      sprintf(msg, "%s", "#");
      if(ci->nodeColour == White)
       sprintf(msg, "%d", 4);
      else
        sprintf(msg, "%d", 5);
      ssize_t sentLen = send(sockfd, msg, strlen(msg), 0);
      nowC = chrono::high_resolution_clock::to_time_t(
          chrono::high_resolution_clock::now());
      nows = asctime(localtime(&nowC));
      strncpy(nowt, nows + 11, 8);
      // fprintf(
      //     pFile,
      //     "Server %d requests %dth clock synchronisation to Server %d at
      //     %s.\n", selfID, requestNumber, i, nowt);
      if (sentLen < 0) {
        perror("send() failed");
        exit(-1);
      } else if (sentLen != strlen(msg)) {
        perror("send(): sent unexpected number of bytes");
        exit(-1);
      }
      close(sockfd);
      sockfd = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
      if (sockfd < 0) {
        perror("socket() failed");
        exit(-1);
      }
      ci->haveToken = false;
      ci->nodeColour = White;
    }
  }
  pthread_exit(NULL);
}

void *receiveThread(void *params) {
  // toReceiverThread initVals = *((toReceiverThread *)params);
  // this struct contains information about the cell
  cellInfo *ci = (cellInfo *)params;
  // id of the server
  int selfID = ci->id;
  // the port number is associated with the server id
  in_port_t servPort = 50000 + selfID; // Local port
  int servSock;
  if ((servSock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) < 0) {
    perror("socket() failed");
    exit(-1);
  }

  struct sockaddr_in servAddr;
  memset(&servAddr, 0, sizeof(servAddr));
  servAddr.sin_family = AF_INET;
  servAddr.sin_addr.s_addr = htonl(INADDR_ANY);
  servAddr.sin_port = htons(servPort);

  // Bind to the local address
  if (bind(servSock, (struct sockaddr *)&servAddr, sizeof(servAddr)) < 0) {
    perror("bind() failed");
    exit(-1);
  }

  // Listen to the client
  if (listen(servSock, MAXPENDING) < 0) {
    perror("listen() failed");
    exit(-1);
  }

  // this lock ensures that no sender thread begins sending sync requests
  // before all the server are ready to listen
  mtx.lock();
  beginLock++;
  mtx.unlock();

#ifndef DEBUG_MODE
  cout << "Process now listening " << selfID << endl;
#endif
  for (auto i = 0;; i++) {
    if (listen(servSock, MAXPENDING) < 0) {
      perror("listen() failed");
      exit(-1);
    }
    struct sockaddr_in clntAddr;
    socklen_t clntAddrLen = sizeof(clntAddr);

// Wait for a client to connectservSock
#ifndef DEBUG_MODE
    cout << "Waiting for accept" << endl;
#endif
    int clntSock = accept(servSock, (struct sockaddr *)&clntAddr, &clntAddrLen);
    if (clntSock < 0) {
      perror("accept() failed");
      exit(-1);
    }

    char clntIpAddr[INET_ADDRSTRLEN];
    if (inet_ntop(AF_INET, &clntAddr.sin_addr.s_addr, clntIpAddr,
                  sizeof(clntIpAddr)) != NULL) {
      // printf("----\nHandling client %s %d\n", clntIpAddr,
      // ntohs(clntAddr.sin_port));
    } else {
      puts("----\nUnable to get client IP Address");
    }

    // Receive data
    char buffer[10];
    memset(buffer, 0, sizeof(char) * 10);
    ssize_t recvLen = recv(clntSock, buffer, sizeof(char) * 10, 0);
    // messsage format "senderID#senderColour"
    string temp;
    stringstream check(buffer);
    getline(check, temp, '#');
    stringstream senderIDString(temp);
    int senderID;
    senderIDString >> senderID;
    int senderMessageCode;
    getline(check, temp, '#');
    stringstream senderColourString(temp);
    senderColourString >> senderMessageCode;

    if (senderMessageCode == (int)Red) {
      pthread_mutex_lock(ci->lock);
      ci->cellColour = Red;
      ci->nodeColour = Black;
      pthread_mutex_unlock(ci->lock);
    } else if (senderMessageCode == (int)Blue) {
      pthread_mutex_lock(ci->lock);
      ci->cellColour = Blue;
      pthread_mutex_unlock(ci->lock);
    } else if (senderMessageCode == 4) {
      for(auto i=0;i<ci->children.size();i++) {
        if(ci->children[i] == senderID)
          ci->tokenReceived[i] = true;
      }
    } else if (senderMessageCode == 5) {
      for(auto i=0;i<ci->children.size();i++) {
        if(ci->children[i] == senderID)
          ci->tokenReceived[i] = true;
      }
      ci->nodeColour = Black;
    }
    // check if the sending cell is a child of this cell
    // is so mark it as blue & check if all the children
    // have been marked blue, if yes, send a white token
    // to the parent node

    auto nowC = chrono::high_resolution_clock::to_time_t(
        chrono::high_resolution_clock::now());
    char *nows = asctime(localtime(&nowC));
    char nowt[9];
    strncpy(nowt, nows + 11, 8);

    if (recvLen < 0) {
      perror("recv() failed");
      exit(-1);
    } else
      fprintf(pFile, "%s\n", "Cell changes colour");
    close(clntSock);
  }
  // cout << "gonna stop receiving" << endl;
  close(servSock);
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

int minKey(int key[], bool mstSet[]) {
  // Initialize min value
  int min = INT_MAX, min_index;

  for (int v = 0; v < N; v++)
    if (mstSet[v] == false && key[v] < min)
      min = key[v], min_index = v;

  return min_index;
}