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
#define DEBUG_MODE 1
#define BUFSIZE 1024
using namespace std;

// parameters for the model
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
// integer valued parameters
int N, Ir, Ib;

// real valued parameters
float Wr, Wb, Lb, Lr, Ls, p, q;

// this vector contains information about all the cells
vector<cellInfo> cellInfoVec;
// the list of leaves in the spanning tree
vector<int> leafList;
// adjaceny list representation of the graph
vector<vector<int>> graph;
// Spanning tree is represented through a parent array
vector<int> parent;
// ID of the root node of the ST
int rootID = -2;
// network parameters
int MAXPENDING, beginLock = 0;

// pthread conditional variables to notify threads to begin sending
// messages and to notify the main thread of the termination, respectively
pthread_cond_t sendBeginCondVariable, terminationCondVariable;
pthread_mutex_t sendLock, terminationLock;

// mutex locks to synchronise the threads at some points
mutex mtx;

// file to write output to
FILE *pFile;

// void primMST(vector<vector<int>> &graph, vector<int> &parent);

// int minKey(int key[], bool mstSet[]);

// function to read input from the file
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
#ifndef DEBUG_MODE
  cout << "Graph Read, reading MST now" << endl;
#endif

  while (getline(inputFile, line)) {
    istringstream iss1(line);
    int pn = -1;
    while (iss1 >> temp) {
      // cout << pn << ", " << temp << endl;
      if (pn == -1)
        pn = temp - 1;
      else
        parent[temp - 1] = pn;
      if (rootID == -2) {
        rootID = pn;
        // cout << "rootID " << rootID << endl;
      }
    }
  }
}

// function to verify that the input was read correctly
#ifndef DEBUG_MODE
void verifyInputRead() {
  cout << "N:  " << N << endl;
  cout << "Wr: " << Wr << endl;
  cout << "Ir: " << Ir << endl;
  cout << "Wb: " << Wb << endl;
  cout << "Ib: " << Ib << endl;
  cout << "Lr: " << Lr << endl;
  cout << "Lb: " << Lb << endl;
  cout << "Ls: " << Ls << endl;
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
  unsigned seed = chrono::system_clock::now().time_since_epoch().count();
  default_random_engine generator(seed);

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

  MAXPENDING = N;
  // primMST(graph, parent);

#ifndef DEBUG_MODE
  printVector(parent);
#endif

  // initialising conditional variables
  pthread_mutex_init(&sendLock, NULL);
  pthread_mutex_init(&terminationLock, NULL);
  pthread_cond_init(&sendBeginCondVariable, NULL);
  pthread_cond_init(&terminationCondVariable, NULL);

  // vector of threads
  vector<pthread_t> threadsList(N);

  // vector of cellInfos
  cellInfoVec.resize(N);

  // vector of cells to infect
  vector<int> infectList(N);

  // launch the threads
  for (auto i = 0; i < N; i++) {
    Colour x = White;
    cellInfoVec[i].id = i;
    cellInfoVec[i].parent = parent[i];

    // give each node its children list
    for (auto j = 0; j < parent.size(); j++) {
      if (parent[j] == i)
        cellInfoVec[i].children.push_back(j);
      cellInfoVec[i].tokenReceived.push_back(false);
    }

    // if the node is a leaf add it to the leaf list
    if (cellInfoVec[i].children.size() == 0) {
      leafList.push_back(i);
      cellInfoVec[i].haveToken = true;
    }

    // allocate space for the pthread_mutex_t
    cellInfoVec[i].lock = (pthread_mutex_t *)malloc(sizeof(pthread_mutex_t));
    // initialise the pthread_mutex_t
    pthread_mutex_init(cellInfoVec[i].lock, NULL);

    // initialise the infection list
    infectList[i] = i;

    // launch each cell process
    pthread_create(&(threadsList[i]), NULL, cellProcess,
                   (void *)(&cellInfoVec[i]));
  }

#ifndef DEBUG_MODE
  cout << "Threads Created" << endl;
  cout << "Number of leaves = " << leafList.size() << endl;
#endif

  exponential_distribution<double> distributionI(1.0 / Wr),
      distributionA(1.0 / Wb);

  // wait for some time before introducing the virus into
  // the system i.e. red cells
  sleep(distributionI(generator));

  // infecting random Ir number of the cells by setting their
  // colour to red

  srand(time(0));
  random_shuffle(infectList.begin(), infectList.end());
  auto nowC = chrono::high_resolution_clock::to_time_t(
      chrono::high_resolution_clock::now());
  char *nows = asctime(localtime(&nowC));
  char nowt[9];
  strncpy(nowt, nows + 11, 8);
  for (auto i = 0; i < Ir; i++) {
    fprintf(
        pFile, "Cell %d Turns Red at %llu\n", infectList[i],
        (long long unsigned)(chrono::duration_cast<chrono::nanoseconds>(
                                 chrono::system_clock::now().time_since_epoch())
                                 .count()));
    pthread_mutex_lock(cellInfoVec[infectList[i]].lock);
    cellInfoVec[i].cellColour = Red;
    pthread_mutex_unlock(cellInfoVec[infectList[i]].lock);
  }

#ifndef DEBUG_MODE
  cout << "Threads Infected" << endl;
#endif

  // wait for some time before introducing the antidote into the
  // system i.e. blue cells
  sleep(distributionA(generator));

  random_shuffle(infectList.begin(), infectList.end());
  auto t1 = chrono::high_resolution_clock::now();
  for (auto i = 0; i < Ib; i++) {
    fprintf(
        pFile, "Cell %d Turns Blue at %llu\n", infectList[i],
        (long long unsigned)(chrono::duration_cast<chrono::nanoseconds>(
                                 chrono::system_clock::now().time_since_epoch())
                                 .count()));
    pthread_mutex_lock(cellInfoVec[infectList[i]].lock);
    cellInfoVec[i].cellColour = Blue;
    pthread_mutex_unlock(cellInfoVec[infectList[i]].lock);
  }

#ifndef DEBUG_MODE
  cout << "Blue Cells Introduced" << endl;
#endif
  // use pthreads to wait for the termination signal which
  // would be send by the root of the spanning tree
  pthread_mutex_lock(&terminationLock);
  pthread_cond_wait(&terminationCondVariable, &terminationLock);
  auto t2 = chrono::high_resolution_clock::now();
  pthread_mutex_unlock(&terminationLock);

  auto durationForTermination = t2 - t1;

#ifndef DEBUG_MODE
  cout << "Time for termination since introduction of Blue cells: "
       << durationForTermination.count() << endl;
#endif

  // finish pthreads

  for (auto i = 0; i < N; i++) {
    pthread_cancel(threadsList[i]);
  }
}

void *cellProcess(void *params) {
  // this struct contains information about the cell
  cellInfo *ci = (cellInfo *)params;
  // id of the server
  int selfID = ci->id;

  // the message which is sent to neighbour nodes
  char msg[10] = "";

  // each cell process has a seperate receiving thread
  pthread_t receivingThread;
  pthread_create(&receivingThread, NULL, receiveThread, (void *)ci);
  vector<int> neighbours;

  // get all the neighbours of this cell
  for (auto i = 0; i < graph[selfID].size(); i++) {
    if (graph[selfID][i] == 1)
      neighbours.push_back(i);
  }

  // using conditional variable to wait for the all receiving
  // threads to become active
  pthread_mutex_lock(&sendLock);
  pthread_cond_wait(&sendBeginCondVariable, &sendLock);
  pthread_mutex_unlock(&sendLock);

  // the distributions to add delay to the sending of messages
  exponential_distribution<double> distributionR(Lr), distributionB(Lb);

  unsigned seed = chrono::system_clock::now().time_since_epoch().count();
  default_random_engine generator(seed);
  // waiting for all threads to be created

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
    memset(msg, 0, sizeof(char) * 10);
    sprintf(msg, "%d#%d", selfID, (int)ci->cellColour);

    // send messages to p or q % of the neighbours
    for (auto i = 0;
         i < ceil(neighbours.size() * (currentColour == Red ? p : q) / 100.0);
         i++) {
      // if the current colour of the cell is white, do not send any messages
      if (currentColour == White) {
        // cout << "breaking" << endl;
        break;
      }
      if (neighbours[i] == selfID)
        continue;

#ifndef DEBUG_MODE
      cout << "Message being sent = " << msg << endl;
#endif
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
      }
      nowC = chrono::high_resolution_clock::to_time_t(
          chrono::high_resolution_clock::now());
      nows = asctime(localtime(&nowC));
      strncpy(nowt, nows + 11, 8);
      ssize_t sentLen = send(sockfd, msg, strlen(msg), 0);
      fprintf(pFile, "Cell %d sends a %s message to Cell %d at %llu\n", selfID,
              currentColour == Red ? "Red" : "Blue", neighbours[i],
              (long long unsigned)(chrono::duration_cast<chrono::nanoseconds>(
                                       chrono::system_clock::now()
                                           .time_since_epoch())
                                       .count()));
      if (sentLen < 0) {
        perror("send() failed");
        exit(-1);
      } else if (sentLen != strlen(msg)) {
        perror("send(): sent unexpected number of bytes");
        exit(-1);
      }
      if (currentColour == Red)
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

      // simulate the delay in message send
    }

    // This part of the code is for termination detection in every
    // node, a node checks if it has received tokens from all its children,
    // if it has, then it send a black or white token to its own parent

    // leaves have no children, so they can only send tokens when they
    // actually have the token
    // internal nodes can send tokens when they have received tokens
    // from all their children
    bool allTokensReceived = ci->children.size() > 0 ? true : false;
    pthread_mutex_lock(ci->lock);
    for (auto i = 0; i < ci->children.size(); i++) {
      if (!ci->tokenReceived[i]) {
        allTokensReceived = false;
        break;
      }
    }
    pthread_mutex_unlock(ci->lock);
    if ((allTokensReceived || ci->haveToken) && ci->cellColour == Blue) {

#ifndef DEBUG_MODE
      cout << "Sending Tokens" << endl;
#endif

      if (selfID != rootID)

        fprintf(pFile, "Cell %d sends a %s token to cell %d\n", selfID,
                ci->nodeColour == White ? "White" : "Black", ci->parent);
      if (selfID == rootID && ci->nodeColour == White) {
        fprintf(pFile, "Termination Detected by Cell 0");
        fclose(pFile);

        pthread_mutex_lock(&terminationLock);
        // signal the main thread that the processes have terminated
        pthread_cond_signal(&terminationCondVariable);
        pthread_mutex_unlock(&terminationLock);
        pthread_exit(NULL);

      } else if (selfID == rootID) {
        for (auto k = 0; k < leafList.size(); k++) {
          pthread_mutex_lock(cellInfoVec[leafList[k]].lock);
          cellInfoVec[leafList[k]].haveToken = true;
          cellInfoVec[leafList[k]].nodeColour = White;
          pthread_mutex_unlock(cellInfoVec[leafList[k]].lock);
        }
        pthread_mutex_lock(ci->lock);
        ci->nodeColour = White;
        for (auto i = 0; i < ci->children.size(); i++) {
          ci->tokenReceived[i] = false;
        }
        pthread_mutex_unlock(ci->lock);
      } else {
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
        sprintf(msg, "%d#%d", selfID, ci->nodeColour == White ? 4 : 5);
        ssize_t sentLen = send(sockfd, msg, strlen(msg), 0);
        nowC = chrono::high_resolution_clock::to_time_t(
            chrono::high_resolution_clock::now());
        nows = asctime(localtime(&nowC));
        strncpy(nowt, nows + 11, 8);
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
        pthread_mutex_lock(ci->lock);
        ci->nodeColour = White;
        for (auto i = 0; i < ci->children.size(); i++) {
          ci->tokenReceived[i] = false;
        }
        pthread_mutex_unlock(ci->lock);
      }
    }
  }
}

void *receiveThread(void *params) {
  // toReceiverThread initVals = *((toReceiverThread *)params);
  // this struct contains information about the cell
  cellInfo *ci = (cellInfo *)params;
  // id of the server
  int selfID = ci->id;
  // the port number is associated with the server id
  in_port_t servPort = 50000 + selfID; // Local port

  unsigned seed = chrono::system_clock::now().time_since_epoch().count();
  default_random_engine generator(seed);
  exponential_distribution<double> distributionS(Ls);

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
  pthread_mutex_lock(&sendLock);
  beginLock++;
  if (beginLock == N)
    // signalling all the sending threads that the
    // receiving threads are ready and listening
    pthread_cond_broadcast(&sendBeginCondVariable);
  pthread_mutex_unlock(&sendLock);

#ifndef DEBUG_MODE
  cout << "Process now listening " << selfID << endl;
#endif

  // listen loop
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
    // to simulate exponential delay the message takes to be sent
    sleep(distributionS(generator));
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

    auto nowC = chrono::high_resolution_clock::to_time_t(
        chrono::high_resolution_clock::now());
    char *nows = asctime(localtime(&nowC));
    char nowt[9];
    strncpy(nowt, nows + 11, 8);
    if (recvLen < 0) {
      perror("recv() failed");
      exit(-1);
    } else {
      if (senderMessageCode == (int)Red) {
        pthread_mutex_lock(ci->lock);
        // on receiving red message  turns red if not already
        fprintf(pFile, "Cell %d receives a Red msg at %llu\n", selfID,
                (long long unsigned)(chrono::duration_cast<chrono::nanoseconds>(
                                         chrono::system_clock::now()
                                             .time_since_epoch())
                                         .count()));
        if (ci->cellColour != Red) {
          ci->cellColour = Red;
          fprintf(
              pFile, "Cell %d turns Red at %llu\n", selfID,
              (long long unsigned)(chrono::duration_cast<chrono::nanoseconds>(
                                       chrono::system_clock::now()
                                           .time_since_epoch())
                                       .count()));
        }
        pthread_mutex_unlock(ci->lock);
      } else if (senderMessageCode == (int)Blue) {
        pthread_mutex_lock(ci->lock);
        // on receiving blue message turns blue if not already
        fprintf(pFile, "Cell %d receives a Blue msg at %llu\n", selfID,
                (long long unsigned)(chrono::duration_cast<chrono::nanoseconds>(
                                         chrono::system_clock::now()
                                             .time_since_epoch())
                                         .count()));
        if (ci->cellColour != Blue) {
          ci->cellColour = Blue;
          fprintf(
              pFile, "Cell %d turns Blue at %llu\n", selfID,
              (long long unsigned)(chrono::duration_cast<chrono::nanoseconds>(
                                       chrono::system_clock::now()
                                           .time_since_epoch())
                                       .count()));
        }
        pthread_mutex_unlock(ci->lock);
      } else if (senderMessageCode == 4) {
        pthread_mutex_lock(ci->lock);
        // on receiving white token marks the token received from the child
        fprintf(pFile, "Cell %d receives a White token from %d at %llu\n",
                selfID, senderID,
                (long long unsigned)(chrono::duration_cast<chrono::nanoseconds>(
                                         chrono::system_clock::now()
                                             .time_since_epoch())
                                         .count()));
        for (auto i = 0; i < ci->children.size(); i++) {
          if (ci->children[i] == senderID)
            ci->tokenReceived[i] = true;
        }
        pthread_mutex_unlock(ci->lock);
      } else if (senderMessageCode == 5) {
        pthread_mutex_lock(ci->lock);
        // on receiving black token marks the token received from the child and
        // changes self colour to black
        fprintf(pFile, "Cell %d receives a Black token from %d at %llu\n",
                ci->id, senderID,
                (long long unsigned)(chrono::duration_cast<chrono::nanoseconds>(
                                         chrono::system_clock::now()
                                             .time_since_epoch())
                                         .count()));
        for (auto i = 0; i < ci->children.size(); i++) {
          if (ci->children[i] == senderID)
            ci->tokenReceived[i] = true;
        }
        ci->nodeColour = Black;
        pthread_mutex_unlock(ci->lock);
      }
    }
    close(clntSock);
  }
  close(servSock);
  pthread_exit(NULL);
}