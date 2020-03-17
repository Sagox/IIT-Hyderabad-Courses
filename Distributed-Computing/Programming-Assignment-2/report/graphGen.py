import matplotlib.pyplot as plt
import numpy as np

numberOfProcesses = np.array(range(10, 31, 5))
# print(numberOfProcesses)
numberOfControlMessages = np.array([36, 56, 38, 96, 116])
timeTakenToComplete = np.array([1023839169, 6014374728, 5003305220, 7012686661, 9013577582])

plt.plot(numberOfProcesses, numberOfControlMessages)
plt.grid()
# #plt.legend()
plt.xlabel('Number Of Processes')
plt.ylabel('Number of Control Messages')
plt.savefig('./ncm.eps', format = 'eps', dpi = 1000)
plt.clf()
plt.plot(numberOfProcesses, timeTakenToComplete, label="Lock")
plt.grid()
# plt.legend()
plt.xlabel('Number Of Processes')
plt.ylabel('Time Taken')
plt.savefig('./tt.eps', format = 'eps', dpi = 1000)
