from subprocess import check_output
import matplotlib.pyplot as plt
import numpy as np
AverageWaitingTimesWithConstantWritersFW = np.array([])
WorstWaitingTimesWithConstantWritersFW = np.array([])
AverageWaitingTimesWithConstantReadersFW = np.array([])
WorstWaitingTimesWithConstantReadersFW = np.array([])
AverageWaitingTimesWithConstantWritersFR = np.array([])
WorstWaitingTimesWithConstantWritersFR = np.array([])
AverageWaitingTimesWithConstantReadersFR = np.array([])
WorstWaitingTimesWithConstantReadersFR = np.array([])

fAverageWaitingTimesWithConstantWritersFW = np.array([])
fWorstWaitingTimesWithConstantWritersFW = np.array([])
fAverageWaitingTimesWithConstantReadersFW = np.array([])
fWorstWaitingTimesWithConstantReadersFW = np.array([])
fAverageWaitingTimesWithConstantWritersFR = np.array([])
fWorstWaitingTimesWithConstantWritersFR = np.array([])
fAverageWaitingTimesWithConstantReadersFR = np.array([])
fWorstWaitingTimesWithConstantReadersFR = np.array([])

vals = [1, 5, 10, 15, 20]

# Constant Writers
for i in range(0, 5):
	g = open("inp-params.txt", "w+")
	g.write("10 " + str(vals[i]) + " 10 10 0.5 0.5")
	g.close()
	rwRes = str.split(check_output("./rw-CS17BTECH11034").decode("utf-8"))
	frwRes = str.split(check_output("./frw-CS17BTECH11034").decode("utf-8"))
	#print(rwRes)
	AverageWaitingTimesWithConstantWritersFW = np.append(AverageWaitingTimesWithConstantWritersFW, float(rwRes[0]))
	WorstWaitingTimesWithConstantWritersFW = np.append(WorstWaitingTimesWithConstantWritersFW, float(rwRes[2]))
	AverageWaitingTimesWithConstantWritersFR = np.append(AverageWaitingTimesWithConstantWritersFR, float(rwRes[1]))
	WorstWaitingTimesWithConstantWritersFR = np.append(WorstWaitingTimesWithConstantWritersFR, float(rwRes[3]))
	fAverageWaitingTimesWithConstantWritersFW = np.append(fAverageWaitingTimesWithConstantWritersFW, float(frwRes[0]))
	fWorstWaitingTimesWithConstantWritersFW = np.append(fWorstWaitingTimesWithConstantWritersFW, float(frwRes[2]))
	fAverageWaitingTimesWithConstantWritersFR = np.append(fAverageWaitingTimesWithConstantWritersFR, float(frwRes[1]))
	fWorstWaitingTimesWithConstantWritersFR = np.append(fWorstWaitingTimesWithConstantWritersFR, float(frwRes[3]))
	print(AverageWaitingTimesWithConstantWritersFW)
# Constant Readers
for i in range(0, 5):
	g = open("inp-params.txt", "w+")
	g.write(str(vals[i]) + " 10 10 10 0.5 0.5")
	g.close()
	rwRes = str.split(check_output("./rw-CS17BTECH11034").decode("utf-8"))
	frwRes = str.split(check_output("./frw-CS17BTECH11034").decode("utf-8"))
	AverageWaitingTimesWithConstantReadersFW = np.append(AverageWaitingTimesWithConstantReadersFW, float(rwRes[0]))
	WorstWaitingTimesWithConstantReadersFW = np.append(WorstWaitingTimesWithConstantReadersFW, float(rwRes[2]))
	AverageWaitingTimesWithConstantReadersFR = np.append(AverageWaitingTimesWithConstantReadersFR, float(rwRes[1]))
	WorstWaitingTimesWithConstantReadersFR = np.append(WorstWaitingTimesWithConstantReadersFR, float(rwRes[3]))
	fAverageWaitingTimesWithConstantReadersFW = np.append(fAverageWaitingTimesWithConstantReadersFW, float(frwRes[0]))
	fWorstWaitingTimesWithConstantReadersFW = np.append(fWorstWaitingTimesWithConstantReadersFW, float(frwRes[2]))
	fAverageWaitingTimesWithConstantReadersFR = np.append(fAverageWaitingTimesWithConstantReadersFR, float(frwRes[1]))
	fWorstWaitingTimesWithConstantReadersFR = np.append(fWorstWaitingTimesWithConstantReadersFR, float(frwRes[3]))

AverageWaitingTimesWithConstantWritersFR = AverageWaitingTimesWithConstantWritersFR/1000
AverageWaitingTimesWithConstantWritersFW = AverageWaitingTimesWithConstantWritersFW/1000
fAverageWaitingTimesWithConstantWritersFR = fAverageWaitingTimesWithConstantWritersFR/1000
fAverageWaitingTimesWithConstantWritersFW = fAverageWaitingTimesWithConstantWritersFW/1000
plt.plot(vals, AverageWaitingTimesWithConstantWritersFR, label="Reader")
plt.plot(vals, AverageWaitingTimesWithConstantWritersFW, label="Writer")
plt.plot(vals, fAverageWaitingTimesWithConstantWritersFR, label="FRW Reader")
plt.plot(vals, fAverageWaitingTimesWithConstantWritersFW, label="FRW Writer")
plt.grid()
plt.legend()
plt.xlabel('Number of Reader Threads')
plt.ylabel('Average Waiting Time (ms)')
plt.savefig('./ConstantWriters-WaitingTimes.eps', format = 'eps', dpi = 1000)
plt.clf()
WorstWaitingTimesWithConstantWritersFR = WorstWaitingTimesWithConstantWritersFR/1000
WorstWaitingTimesWithConstantWritersFW = WorstWaitingTimesWithConstantWritersFW/1000
fWorstWaitingTimesWithConstantWritersFR = fWorstWaitingTimesWithConstantWritersFR/1000
fWorstWaitingTimesWithConstantWritersFW = fWorstWaitingTimesWithConstantWritersFW/1000
plt.plot(vals, WorstWaitingTimesWithConstantWritersFR, label="Reader")
plt.plot(vals, WorstWaitingTimesWithConstantWritersFW, label="Writer")
plt.plot(vals, fWorstWaitingTimesWithConstantWritersFR, label="FRW Reader")
plt.plot(vals, fWorstWaitingTimesWithConstantWritersFW, label="FRW Writer")
plt.grid()
plt.legend()
plt.xlabel('Number of Reader Threads')
plt.ylabel('Worst Waiting Time (ms)')
plt.savefig('./ConstantWriters-WorstTimes.eps', format = 'eps', dpi = 1000)
plt.clf()
AverageWaitingTimesWithConstantReadersFR = AverageWaitingTimesWithConstantReadersFR/1000
AverageWaitingTimesWithConstantReadersFW = AverageWaitingTimesWithConstantReadersFW/1000
fAverageWaitingTimesWithConstantReadersFR = fAverageWaitingTimesWithConstantReadersFR/1000
fAverageWaitingTimesWithConstantReadersFW = fAverageWaitingTimesWithConstantReadersFW/1000
plt.plot(vals, AverageWaitingTimesWithConstantReadersFR, label="Reader")
plt.plot(vals, AverageWaitingTimesWithConstantReadersFW, label="Writer")
plt.plot(vals, fAverageWaitingTimesWithConstantReadersFR, label="FRW Reader")
plt.plot(vals, fAverageWaitingTimesWithConstantReadersFW, label="FRW Writer")
plt.grid()
plt.legend()
plt.xlabel('Number of Writer Threads')
plt.ylabel('Average Waiting Time (ms)')
plt.savefig('./ConstantReaders-WaitingTimes.eps', format = 'eps', dpi = 1000)
plt.clf()
WorstWaitingTimesWithConstantReadersFR = WorstWaitingTimesWithConstantReadersFR/1000
WorstWaitingTimesWithConstantReadersFW = WorstWaitingTimesWithConstantReadersFW/1000
fWorstWaitingTimesWithConstantReadersFR = fWorstWaitingTimesWithConstantReadersFR/1000
fWorstWaitingTimesWithConstantReadersFW = fWorstWaitingTimesWithConstantReadersFW/1000
plt.plot(vals, WorstWaitingTimesWithConstantReadersFR, label="Reader")
plt.plot(vals, WorstWaitingTimesWithConstantReadersFW, label="Writer")
plt.plot(vals, fWorstWaitingTimesWithConstantReadersFR, label="FRW Reader")
plt.plot(vals, fWorstWaitingTimesWithConstantReadersFW, label="FRW Writer")
plt.grid()
plt.legend()
plt.xlabel('Number of Writer Threads')
plt.ylabel('Worst Waiting Time (ms)')
plt.savefig('./ConstantReaders-WorstTimes.eps', format = 'eps', dpi = 1000)
plt.clf()