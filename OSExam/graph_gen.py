import matplotlib.pyplot as plt
import numpy as np
AverageWaitingTimesClass = np.array([0.0276679, 0.0437724, 0.0649737, 0.0894942, 0.100671])
AverageWaitingTimesNoClass = np.array([0.0904044, 0.205695, 0.298086, 0.404625, 0.524115])
Iterations = np.array([20,40,60,80,100])
plt.plot(Iterations, AverageWaitingTimesClass, label="Average Waiting Time For CME")
plt.plot(Iterations, AverageWaitingTimesNoClass, label="Average Waiting Time For ME")
plt.grid()
plt.legend()
plt.xlabel('Number of Threads (n)')
plt.ylabel('Average Waiting Time (seconds)')
plt.savefig('./graphClass.eps', format = 'eps', dpi = 1000)