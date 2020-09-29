from subprocess import check_output
import matplotlib.pyplot as plt
import numpy as np
petersonBasedTreeLock = np.array([48, 197, 537, 1250, 2910, 7461])
filterLock = np.array([51, 192.2, 533, 1496, 3350, 7834])
petersonBasedTreeLockExit = np.array([3.7, 4, 4.4, 4.2, 4.8, 5])
filterLockExit = np.array([.125, .17, .05, 0.1, 0.12, 0.123])

threadsRange = np.array([2,4,8,16,32,64])

plt.plot(threadsRange, petersonBasedTreeLock, label="PTL")
plt.plot(threadsRange, filterLock, label="Filter Lock")
plt.grid()
plt.legend()
plt.xlabel('Number Of Threads')
plt.ylabel('Average Waiting Time (ms)')
plt.savefig('./w.eps', format = 'eps', dpi = 1000)
plt.clf()
plt.plot(threadsRange, petersonBasedTreeLockExit, label="PTL")
plt.plot(threadsRange, filterLockExit, label="Filter Lock")
plt.grid()
plt.legend()
plt.xlabel('Number Of Threads')
plt.ylabel('Average Waiting Time (us)')
plt.savefig('./we.eps', format = 'eps', dpi = 1000)