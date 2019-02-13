import numpy as np
import matplotlib.pyplot as plt

dvec = np.array([-1,1])
omat = np.array([[0,1],[-1,0]])

def norm_vec(x):
	return np.matmul(omat,np.matmul(x,dvec))

def dir_vec(x):
	return np.matmul(x,dvec)

def centroid(a,b,c):
	return (a+b+c)/3

def intersection_points(ab, cd):
	n1 = norm_vec(ab)
	n2 = norm_vec(cd)
	N = np.vstack((n1, n2))
	p = np.zeros(2)
	p[0] = np.matmul(n1, ab[:,0])
	p[1] = np.matmul(n2, cd[:,0])
	return np.matmul(np.linalg.inv(N), p)

def intersection_slope_point(n1,p1,n2,p2):
	N = np.vstack((n1,n2))
	p = np.zeros(2)
	p[0] = np.matmul(n1, p1)
	p[1] = np.matmul(n2, p2)
	return np.matmul(np.linalg.inv(N), p)

def intersection_line(n1,c1,n2,c2):
	p = np.zeros(2)
	p[0] = c1
	p[1] = c2
	N = np.vstack((n1,n2))
	return np.matmul(np.linalg.inv(N), p)

def sectionf(a,b,r):
	c = (r*b + a)/(r+1.0)
	return c

def distance_points(a,b):
	return np.linalg.norm(a-b)

def distance_point_line(ab, x):
	n = norm_vec(ab)
	p = np.matmul(n,ab[:,0])
	numerator = np.matmul(n,x) - p + 0.0
	denominator = np.linalg.norm(n)
	return (numerator/denominator)

def draw_line(a,b):
	plt.plot([a[0], b[0]],[a[1], b[1]])