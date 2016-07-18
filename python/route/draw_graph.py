#!/usr/bin/python
#coding: utf-8

import networkx as nx
import matplotlib.pyplot as plt

G = nx.Graph()
with open('dat0.txt', 'r') as ifile:
    ifile.readline()
    for line in ifile:
        line_list = line.strip().split(',')
        G.add_nodes_from(line_list)
        G.add_edge(line_list[0], line_list[1])

nx.draw_networkx(G)
plt.savefig('p0.png')
plt.show()
