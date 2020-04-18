import numpy as np
import time
def getInput():
	None

# number of variables
n = 4
# constraint matrix A
A = -np.eye(n)
x = np.array([[-1, -1, 0, 1], [3,-10,0,-5], [1,3,0, 0], [0,1,1,0], [0,-1,0,1], [0,0,1,-1]])
A = np.append(A, x, 0)
B = np.zeros(n)
B = np.append(B, [9, 158, 779, 45, 13,200])
C = np.array([13, 1, 9, -4])

# print(A)
# print(B)
# print(C)

def getInitialFeasiblePoint(A, B, C):
	allNonNegative = True
	for i in B:
		if i < 0:
			allNonNegative = False;
			break
	if allNonNegative:
		return np.zeros(C.shape[0])

	# if we reach here => some Bi is < 0, so we create the new LP
	Am = np.append(A, np.array([[1]]*A.shape[0]), 1)
	for i in range(C.shape[0]):
		Am[i][C.shape[0]] = 0
	# Am = np.insert(Am, 0, [np.zeros(Am.shape[1])], 0)
	# Am[0][Am.shape[1]-1] = -1
	# Bm = np.insert(B, 0, -np.min(B))
	Am = np.append(Am, [np.zeros(Am.shape[1])], 0)
	Am[Am.shape[0]-1][Am.shape[1]-1] = -1
	Bm = np.append(B, -np.min(B))
	for i in range(B.shape[0]):
		if B[i] == np.min(B):
			B[i] += 0.1
	for i in range(Bm.shape[0]):
		if Bm[i] == np.min(Bm):
			Bm[i] += 0.1
	# Bm = B
	Cm = np.zeros(C.shape[0] + 1)
	Cm[Cm.shape[0]-1] = 1
	print(Am)
	print(Bm)
	print(Cm)
	initialFeasiblePoint = np.append(np.zeros(C.shape[0]), np.min(B))
	print("initialFeasiblePoint", initialFeasiblePoint)
	z = simplex(Am, Bm, Cm, initialFeasiblePoint)
	# print("\n\n Feasible point received \n\n")
	if z[z.shape[0]-1] < 0:
		print("No solution")
		return -1
	else:
		# print(z, z[:z.shape[0]-1])
		return z[:z.shape[0]-1]


def simplex(A, B, C, initialFeasiblePoint = None):
	print(A)
	print(B)
	print(C)

	# get the initial feasible point
	if initialFeasiblePoint is None:
		currentPoint = getInitialFeasiblePoint(A, B, C)
	else:
		currentPoint = initialFeasiblePoint
	print("currentPoint", currentPoint)
	
	while True:
		# get the rows in A for which the current point satisfies
		# with equality
		tightRows = []
		for i in range(A.shape[0]):
			if len(tightRows) == C.shape[0]:
				break
			if abs(A[i].dot(currentPoint) - B[i]) < 0.000000001:
				tightRows.append(i)
		# sometime we may not get n tight rows, for example when are initial
		# chosen point is not a vertex
		# if len(tightRows) < C.shape[0]:
		# 	for i in range(C.shape[0]):
		# 		if len(tightRows) == C.shape[0]:
		# 			break
		# 		if i not in tightRows:
		# 			temp = tightRows
		# 			tightRows.append(i)
		# 			Ap = A[tightRows]
		# 			print("rank", np.linalg.matrix_rank(Ap))
		# 			if np.linalg.matrix_rank(Ap) < len(tightRows):
		# 				tightRows = temp
		print(tightRows)
		Ap = A[tightRows]
		# print("Ap", Ap)

		# for the n independent tight rows, find a alphas
		# such that their linear combination is equal to C
		alphas = C.dot(np.linalg.inv(Ap))
		print("alphas", alphas)
		# check if there are any negative elements in alpha
		allPositive = True
		negativeIndex = None
		for i in range(alphas.shape[0]):
			if alphas[i] < 0:
				negativeIndex = i
				allPositive = False
				break
		# if all alphas are positive then the current point itself is the
		# opimal point
		if allPositive:
			print("All positive")
			return currentPoint
		# the direction vector would be ith coloumn of the negative
		# of the inverse of the tight row matrix, where i is the index
		# of the alpha element which is < 0
		directionVector = -np.linalg.inv(Ap)[:, negativeIndex]
		print("directionVector", directionVector)

		# using the direction vector move in it's direction and find
		# the next vertex

		minT = None
		for i in range(A.shape[0]):
			if i in tightRows:
				continue
			if (A[i].dot(directionVector)) <= 0:
				continue
			curT = (B[i] - A[i].dot(currentPoint))/(A[i].dot(directionVector))
			# print(curT)
			if minT is None or curT < minT:
				minT = curT
		currentPoint = currentPoint + directionVector*minT
		# print(minT)
		print(currentPoint)
		# return np.random.random(C.shape[0])
		# iteratively find bette solutions
		time.sleep(1)

simplex(A, B, C)
