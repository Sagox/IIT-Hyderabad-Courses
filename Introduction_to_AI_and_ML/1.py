import geo2d
import numpy as np
import matplotlib.pyplot as plt

A = np.array([-2, -2])
B = np.array([1, 3])
C = np.array([4, -1])

# 3.2

n_bc = geo2d.norm_vec(np.vstack((B,C)).T)
p_bc = np.matmul(n_bc, A)
print(n_bc, p_bc)

# 3.3

n_ca = geo2d.norm_vec(np.vstack((C,A)).T)
p_ca = np.matmul(n_ca, B)
print(n_ca, p_ca)

n_ab = geo2d.norm_vec(np.vstack((A, B)).T)
p_ab = np.matmul(n_ab, C)
print(n_ab, p_ab)

# 3.4

n_bq = geo2d.dir_vec(np.vstack((C, A)).T)
p_bq = B
n_cr = geo2d.dir_vec(np.vstack((B, A)).T)	
p_cr = C
orthocentre = geo2d.intersection_slope_point(n_bq,p_bq,n_cr,p_cr)
print(orthocentre)

# 3.5

P = geo2d.intersection_points(np.vstack((B,C)).T, np.vstack((orthocentre, A)).T)
Q = geo2d.intersection_points(np.vstack((A,C)).T, np.vstack((orthocentre, B)).T)
R = geo2d.intersection_points(np.vstack((A,B)).T, np.vstack((orthocentre, C)).T)

print(P,Q,R)

# 4.3 - # 4.5

# angle bisector, just use section formula to get the other point

U = geo2d.sectionf(B,C,(geo2d.distance_points(A,B)/geo2d.distance_points(A,C)))
V = geo2d.sectionf(A,C,(geo2d.distance_points(A,B)/geo2d.distance_points(B,C)))
W = geo2d.sectionf(B,A,(geo2d.distance_points(C,B)/geo2d.distance_points(A,C)))

I = geo2d.intersection_points(np.vstack((B,V)).T, np.vstack((C,W)).T)

print(I)

# 4.6

geo2d.draw_line(A,B)
geo2d.draw_line(C,B)
geo2d.draw_line(A,C)
geo2d.draw_line(A,U)
geo2d.draw_line(V,B)
geo2d.draw_line(C,W)
plt.plot(I[0],I[1], 'o')
# plt.show()

# 4.8
inradius = geo2d.distance_point_line(np.vstack((A,B)).T,I)
print(inradius)
incircle = plt.Circle(I,inradius, fill=None)
plt.gca().add_patch(incircle)
plt.axis('scaled')

# 4.10,4.11
	
circumcentre = geo2d.sectionf(orthocentre, geo2d.centroid(A,B,C), -3)
circumradius = geo2d.distance_points(circumcentre, A)
circumcircle = plt.Circle(circumcentre, circumradius, fill=None)
plt.plot(circumcentre[0], circumcentre[1], 'o')
plt.plot(A[0],A[1],'o')
plt.plot(B[0],B[1],'o')
plt.plot(C[0],C[1],'o')
geo2d.draw_line(circumcentre, A)
geo2d.draw_line(circumcentre, B)
geo2d.draw_line(circumcentre, C)
plt.gca().add_patch(circumcircle)
plt.axis('scaled')
plt.show()
