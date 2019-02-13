import numpy as np
import matplotlib.pyplot as plt
import geo2d as g2

# 1.2
A = np.array([1,2])
n_median_b = np.array([1,1])
p_b = 5
n_median_c = np.array([1,0]) 
p_c = 4
centroid = g2.intersection_line(n_median_b, p_b, n_median_c, p_c)
print(centroid)

# B + C = 3*O - A
C = np.matmul(np.linalg.inv(np.array([[1,1],[1,0]])), np.array([7,4]))
print(C)

B = np.array([11,1]) - C

print(B)

#