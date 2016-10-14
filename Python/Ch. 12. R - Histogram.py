# HISTOGRAM

import numpy as np
import matplotlib.pyplot as plt

# Form the vector x with components the numbers given:
  
x = np.array([4.78887, 4.17608, 4.08729, 6.26209, 4.52593, 4.62893, 5.90426, 5.75323, 4.07328, 5.63953, 4.91056, 4.73250, 5.72151, 4.24848, 4.90887, 4.67623, 5.90012, 4.65317, 4.79153, 5.45268, 5.30632, 4.26952, 5.65727, 5.18226, 4.38460, 4.54494, 4.00306, 5.97430, 4.22142, 4.96759, 7.08994, 4.81065, 4.53098, 4.86568, 5.47072, 4.96407, 7.11077, 6.69075, 5.16618, 6.30068, 5.29543, 3.61960, 2.94918, 4.22886, 2.71753, 5.54133, 4.13987, 4.10216, 5.91200, 5.47286, 5.15642, 5.56657, 5.77732, 5.83059, 4.28017, 5.15317, 6.12074, 6.88621, 4.91502, 4.86923, 7.11721, 5.74695, 4.20977, 6.94411, 4.69592, 5.76876, 4.21269, 3.37941, 4.93466, 5.82413, 4.82099, 4.07058, 4.02249, 4.94776, 4.45813, 4.43090, 4.65317, 4.74413, 5.48435, 5.03837, 6.11916, 3.35769, 7.19028, 5.31314, 4.23431, 6.12275, 4.03023, 4.59844, 5.67686, 5.74261, 4.48146, 4.97754, 4.75857, 4.30989, 4.77602, 3.41128, 5.17985, 5.09158, 3.14031, 3.74785])

n, bins, patches = plt.hist(x, 7, facecolor='red')
plt.xlim(0.8 * min(x), 1.2 * max(x))
plt.show()

