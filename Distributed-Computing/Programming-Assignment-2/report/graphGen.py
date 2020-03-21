import matplotlib.pyplot as plt
import numpy as np

numberOfProcesses = np.array(range(10, 31, 5))
# print(numberOfProcesses)
numberOfControlMessagesSTA = np.array([9, 28, 19, 48, 58])
timeTakenToCompleteSTA = np.array([19103542574, 52402613343, 29025763351, 33019031936, 91917298843])

numberOfControlMessagesMOA = np.array([33, 50, 67, 88, 105])
timeTakenToCompleteMOA = np.array([24117538354, 73856107661, 75553715218, 85103551428, 88399152192])

plt.plot(numberOfProcesses, numberOfControlMessagesSTA)
plt.grid()
plt.xlabel('Number Of Processes')
plt.ylabel('Number of Control Messages')
plt.savefig('./ncm1.eps', format = 'eps', dpi = 1000)

plt.clf()

plt.plot(numberOfProcesses, timeTakenToCompleteSTA, label="Lock")
plt.grid()
plt.xlabel('Number Of Processes')
plt.ylabel('Time Taken')
plt.savefig('./tt1.eps', format = 'eps', dpi = 1000)

plt.clf()

plt.plot(numberOfProcesses, numberOfControlMessagesMOA, label="Lock")
plt.grid()
plt.xlabel('Number Of Processes')
plt.ylabel('Number of Control Messages')
plt.savefig('./ncm2.eps', format = 'eps', dpi = 1000)

plt.clf()

plt.plot(numberOfProcesses, timeTakenToCompleteMOA, label="Lock")
plt.grid()
plt.xlabel('Number Of Processes')
plt.ylabel('Time Taken')
plt.savefig('./tt2.eps', format = 'eps', dpi = 1000)
