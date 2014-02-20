# _*_ coding: latin-1 _*_

'''
Created on 11/02/2014

@author: Mauro
'''
from _datetime import datetime

N = 100

A = [[0.5 for _ in range(N)] for _ in range(N)]
B = [[N for _ in range(N)] for _ in range(N)]
C = [[0 for _ in range(N)] for _ in range(N)]

start = datetime.now()

for i in range(N):
    for j in range(N):
        for k in range(N):
            C[i][j] += A[i][j] * B[j][k]

stop = datetime.now()

print ((stop - start).total_seconds() * 1000, " ms.\n\n")

#for row in C:
#    print (row)