import numpy as np
import matplotlib.pyplot as plt

tas_max_waiting_times = np.array([7720770, 16715833, 30450166, 47087933, 70077466])
cas_max_waiting_times = np.array([5919210, 18941033, 32933266, 50016533, 65173533])
cas_bounded_max_waiting_times = np.array([2292653, 4893306, 8582123, 10098930, 12710400])

tas_avg_times = np.array([1341653, 3136900, 4846576, 6678213, 8578013])
cas_avg_times = np.array([1455620, 3140373, 4922430, 6896806, 8945430])
cas_bounded_avg_times = np.array([1592090, 2993550, 5908780, 6706636, 8792493])

tas_sd_times = np.array([1480800, 3170080, 5007910, 7467966, 10106896])
cas_sd_times = np.array([1348106, 3251346, 5173016, 7239663, 9248920])
cas_bounded_sd_times = np.array([429196, 944229, 1360576, 1956473, 2651970])

number_of_processes = np.array([10,20,30,40,50])

# plt.plot(number_of_processes, tas_avg_times, 'r', cas_avg_times, 'g', cas_bounded_avg_times, 'b')
plt.plot(number_of_processes, tas_max_waiting_times, label = 'TAS')
plt.plot(number_of_processes, cas_max_waiting_times, label = 'CAS')
plt.plot(number_of_processes, cas_bounded_max_waiting_times, label = 'CAS Bounded')
plt.grid()
plt.legend()
plt.xlabel('Number of Threads')
plt.ylabel('Maximum Waiting Time')
plt.savefig('./max.eps', format = 'eps', dpi = 1000)
