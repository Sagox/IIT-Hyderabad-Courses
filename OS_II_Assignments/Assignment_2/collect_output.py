from subprocess import check_output
import matplotlib.pyplot as plt
import numpy as np
nums = [10,20,30,40,50]
f = open("stats.txt", "a+")
for j in range(0,5):
	g = open("inp-params.txt", "w+")
	a, b, c = np.zeros(3),np.zeros(3),np.zeros(3)
	g.write(
		str(nums[j]) + " " +
		str(10) + " " +
		"5" + " " + "20")
	g.close()
	for i in range(0,3):
		print(i)
		a += list(map(float, str.split(check_output("./SrcAssgn2-tas-CS17BTECH11034"))))
		b += list(map(float, str.split(check_output("./SrcAssgn2-cas-CS17BTECH11034"))))
		c += list(map(float, str.split(check_output("./SrcAssgn2-cas-bounded-CS17BTECH11034"))))
	a = a/3.0
	b = b/3.0
	c = c/3.0

	f.write(
		"tas: " + str(a[0]) + " " + str(a[1]) + " " + str(a[2]) + '\n'
		"cas: " + str(b[0]) + " " + str(b[1]) + " " + str(b[2]) +'\n'
		"cas-bounded: " + str(c[0]) + " " + str(c[1]) + " " + str(c[2]) +'\n')

	print(a,b,c)