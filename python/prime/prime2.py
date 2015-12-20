#! /usr/bin/python3
# -*- coding: utf-8 -*-

from math import ceil, sqrt
x = int(input("Please enter a integer: "))
p = [3]
#s = [ceil(sqrt(3))]
print('2,3', end=',')

for n in range(3, x ,2):
    s_n = ceil(sqrt(n))
    for m in p:
        if n % m == 0: 
            break

        if m > s_n:
            p.append(n)
#            s.append(s_n)
            print(n,end=',')
            break
    else:
        p.append(n)
#        s.append(s_n)
        print(n,end=',')
print()
print(len(p)+1)
