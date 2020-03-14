import random
import time
import sys

random.seed(time.time())
numberOfNodes = int(sys.argv[1])
population = range(1, numberOfNodes+1)
for i in range(1, numberOfNodes+1):
	print(i, end=' ')
	# ranodom number of neighbours
	k = random.randrange(1, numberOfNodes+1)
	# random k nodes among all the vertices
	for j in random.sample(population, k):
		if j != i:
			print(j, end=' ')
	print("")


