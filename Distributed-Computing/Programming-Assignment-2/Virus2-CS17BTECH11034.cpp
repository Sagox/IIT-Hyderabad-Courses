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
//#define DEBUG_MODE 1
#define BUFSIZE 1024
using namespace std;

// parameters for the model
enum Colour { White = 1, Red = 2, Blue = 3};

// this is for storing the information og the cell
struct cellInfo {
  int id;
  int parent;
  bool DT = false;
  bool sentWarningToNeighbours = false;
  bool sentTerminate = false;
  // This is for the implementatin of the tree based termination
  // detection algorithms
  vector<int> To;
  vector<int> From;
  vector<int> children;
  vector<int> colouredLinks;
  vector<bool> terminateReceived;
  Colour cellColour = White;
  // to avoid data race between reading and writing
  // the colour of cells
  pthread_mutex_t *lock;
};

// message meaning and format between cells
// every message begins with the sender id.
// this is followed by a delimiting #.
// that is followed by one of the following numbers,
// 1 - White Message (This is never sent and is just used for debugging)
// 2 - Red Message
// 3 - Blue Message
// 4 - Warning Message
// 5 - Terminate Message
// 6 - Delete Entry message
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
// ID of the root node
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
    cout << "hh" << endl;
    istringstream iss1(line);
    int pn = -1;
    while (iss1 >> temp) {
      cout << pn << ", " << temp << endl;
      if (pn == -1)
        pn = temp - 1;
      else
        parent[temp - 1] = pn;
      if (rootID == -2)
        rootID = pn;
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
      cellInfoVec[i].terminateReceived.push_back(false);
    }

    // if the node is a leaf add it to the leaf list
    if (cellInfoVec[i].children.size() == 0)
      leafList.push_back(i);

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
    fprintf(pFile, "Cell %d Turns Red at %s\n", infectList[i], nowt);
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
    fprintf(pFile, "Cell %d Turns Blue at %s\n", infectList[i], nowt);
    pthread_mutex_lock(cellInfoVec[infectList[i]].lock);
    cellInfoVec[i].cellColour = Blue;
    pthread_mutex_unlock(cellInfoVec[infectList[i]].lock);
  }

#ifndef DEBUG_MODE
  cout << "Blue Cells Introduced" << endl;
#endif

  // put the root cell into DT state
  cellInfoVec[rootID].DT = true;
  fprintf(pFile, "Root Cell goes into DT\n");

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

  // setting up the sockets to send messages to other cells
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
  // also, every round we check if all the children nodes have sent terminate
  // signals, if so, we send a terminate signal to the parent node, if not already
  // sent, we also send the warning signal to all the neighbours when the cell
  // goes into DT state

  for (auto j = 0;; j++) {
    // to make sure the messges are sent to randmo neighbours, we
    // shuffle the neighbours vector
    cout << selfID << " from: " << ci->From.size() << " to: " << ci->To.size() << endl;
    random_shuffle(neighbours.begin(), neighbours.end());
    pthread_mutex_lock(ci->lock);
    Colour currentColour = ci->cellColour;
    pthread_mutex_unlock(ci->lock);
    memset(msg, 0, sizeof(char) * 10);
    // number of neighbours to send messages to
    int up = ceil(neighbours.size() * (currentColour == Red ? p : q) / 100.0);
    int messageCode;
    if (ci->DT && !ci->sentWarningToNeighbours) {
      ci->sentWarningToNeighbours = true;
      messageCode = 4;
      up = neighbours.size();
    } else
      messageCode = (int)ci->cellColour;
    sprintf(msg, "%d#%d", selfID, messageCode);

    // send messages to p or q % of the neighbours
    for (auto i = 0; i < up; i++) {
      // if the current colour of the cell is white, do not send any messages
      if (messageCode == 1) {
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
      // time variables, to be able to print the time into the logs
      nowC = chrono::high_resolution_clock::to_time_t(
          chrono::high_resolution_clock::now());
      nows = asctime(localtime(&nowC));
      strncpy(nowt, nows + 11, 8);
      ssize_t sentLen = send(sockfd, msg, strlen(msg), 0);
      fprintf(pFile, "Cell %d sends a %s message to cell %d at %s\n", selfID,
              messageCode == 4 ? "Warning"
                               : (messageCode == (int)Red ? "Red" : "Blue"),
              neighbours[i], nowt);
      if (sentLen < 0) {
        perror("send() failed");
        exit(-1);
      } else if (sentLen != strlen(msg)) {
        perror("send(): sent unexpected number of bytes");
        exit(-1);
      }
      pthread_mutex_lock(ci->lock);
      if (ci->DT && messageCode == 2) {
        ci->To.push_back(neighbours[i]);
        fprintf(pFile, "Cell %d added cell %d to To Stack\n", selfID, neighbours[i]);
      }
      pthread_mutex_unlock(ci->lock);
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

    // This part of the token does stack clean up when the node is idle i.e.
    // blue colour, we seperately traverse the from stack here
    if (ci->cellColour == Blue) {
      fprintf(pFile, "Cell %d into stack clean up at\n", selfID);
      for (auto t = 0; t < ci->From.size(); t++) {
        servPort = 50000 + ci->From[t];
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
        sprintf(msg, "%d#%d", selfID, 6);
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
      }
      ci->From.erase(ci->From.begin(), ci->From.end());
    }

    // This part of the code is for termination detection in every
    // node, a node checks if it has received terminate from all its children,
    // if it has, then it checks if its local stack is empty, all its incoming
    // links are coloured and is itself idle

    // leaves have no children, so they can only send terminate when they
    // they are idle i.e. blue, they have all their incoming links coloured
    // and their stack is empty

    bool allTerminateReceived = true;
    for (auto i = 0; i < ci->children.size(); i++) {
      if (!ci->terminateReceived[i]) {
        allTerminateReceived = false;
        break;
      }
    }
    
    bool allIncomingLinksColoured =
        neighbours.size() - 1 == ci->colouredLinks.size() ? true : false;
        if(!allTerminateReceived)
          cout << "Cell " << selfID << " has not received all terminates yet" << endl;
        if(!(ci->cellColour == Blue))
          cout << "Cell " << selfID << " is red" << endl;
        if(!(allIncomingLinksColoured))
          cout << "Cell " << selfID << " has some uncoloured edges" << endl;
        if(ci->sentTerminate)
          cout << "Cell " << selfID << " has some already sent terminate" << endl;
        if(!(ci->To.size() == 0))
          cout << "Cell " << selfID << " has To list non zero" << endl;
        if(!(ci->From.size() == 0))
          cout << "Cell " << selfID << " has From list non zero" << endl;
    if (allTerminateReceived && !ci->sentTerminate && ci->cellColour == Blue &&
        allIncomingLinksColoured && ci->To.size() == 0 &&
        ci->From.size() == 0) {
      fprintf(pFile, "%s\n", "Im here");
#ifndef DEBUG_MODE
      cout << "Sending Terminate to parent" << endl;
#endif
      if (selfID == rootID) {
        fprintf(pFile, "Termination Initiated by cell 0");
        fclose(pFile);

        pthread_mutex_lock(&terminationLock);
        // signal the main thread that the processes have terminated
        pthread_cond_signal(&terminationCondVariable);
        pthread_mutex_unlock(&terminationLock);
      } else {
        fprintf(pFile, "Cell %d sends terminate to cell %d\n", selfID,
                ci->parent);
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
        sprintf(msg, "%d#%d", selfID, 5);
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
        ci->sentTerminate = true;
      }
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
        fprintf(pFile, "Cell %d receives a Red msg at %s\n", selfID, nowt);
        if (ci->cellColour != Red) {
          ci->cellColour = Red;
          fprintf(pFile, "Cell %d turns Red at %s\n", selfID, nowt);
        }
        if (ci->DT && (find(ci->colouredLinks.begin(), ci->colouredLinks.end(),
                            senderID) != ci->colouredLinks.end())) {
          ci->From.push_back(senderID);
          fprintf(pFile, "Cell %d adding cell %d to From list at %s\n", selfID,
                  senderID, nowt);
        }
        pthread_mutex_unlock(ci->lock);
      } else if (senderMessageCode == (int)Blue) {
        pthread_mutex_lock(ci->lock);
        fprintf(pFile, "Cell %d receives a Blue msg at %s\n", selfID, nowt);
        if (ci->cellColour != Blue) {
          ci->cellColour = Blue;
          fprintf(pFile, "Cell %d turns Blue at %s\n", selfID, nowt);
        }
        pthread_mutex_unlock(ci->lock);
      } else if (senderMessageCode == 4) {
        pthread_mutex_lock(ci->lock);
        fprintf(pFile, "Cell %d receives a Warning from %d at %s\n", selfID,
                senderID, nowt);
        ci->DT = true;
        ci->colouredLinks.push_back(senderID);
        pthread_mutex_unlock(ci->lock);
      } else if (senderMessageCode == 5) {
        pthread_mutex_lock(ci->lock);
        fprintf(pFile, "Cell %d receives Terminate from %d at %s\n", selfID,
                senderID, nowt);
        for (auto k = 0; k < ci->children.size(); k++) {
          if (ci->children[k] == senderID)
            ci->terminateReceived[k] = true;
        }
        pthread_mutex_unlock(ci->lock);
      } else if (senderMessageCode == 6) {
        pthread_mutex_lock(ci->lock);
        fprintf(pFile,
                "Cell %d receives remove entry message from cell %d at %s\n",
                selfID, senderID, nowt);
        auto toDel = find(ci->To.begin(), ci->To.end(), senderID);
        if(toDel != ci->To.end())
          ci->To.erase(toDel);
        pthread_mutex_unlock(ci->lock);
      }
    }
    close(clntSock);
  }
  // cout << "gonna stop receiving" << endl;
  close(servSock);
}