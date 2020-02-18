import matplotlib.pyplot as plt
import numpy as np

numberOfProcesses = np.array([5, 6, 7, 8, 9, 10])
varianceWithConstantRounds = np.array([137, 389836, 9236841, 7807575, 3477906, 104042751])
numberOfRounds = np.array([5, 6, 7, 8, 9, 10])
varianceWithConstantProcesses = np.array([7654, 3658, 43971, 103152, 433403, 366658])

plt.plot(numberOfProcesses, varianceWithConstantRounds)
plt.grid()
#plt.legend()
plt.xlabel('Number Of Processes')
plt.ylabel('Variance')
plt.savefig('./constantK.eps', format = 'eps', dpi = 1000)
plt.clf()
plt.plot(numberOfRounds, varianceWithConstantProcesses, label="Lock")
plt.grid()
#plt.legend()
plt.xlabel('Number Of Rounds')
plt.ylabel('Variance')
plt.savefig('./constantN.eps', format = 'eps', dpi = 1000)
