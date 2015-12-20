#! /usr/bin/python3
# -*- coding: utf-8 -*-

from math import *

x = int(input("Please input an integer: "))
i = 0
for n in range(2, x):
	for m in range(2, ceil(sqrt(n))+1):
		if n % m == 0:
			break
	else:
		print(n, end=',')
		i = i+1
print()
print(i)
