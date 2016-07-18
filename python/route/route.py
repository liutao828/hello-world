#!/usr/bin/python
#coding: utf-8

from collections import defaultdict, deque

class Graph:
    def __init__(self, data_file):
        self.GraphAdjList = defaultdict(set)
        with open(data_file, 'r') as ifile:
            ifile.readline()
            for line in ifile:
                line_list = [ int(i) for i in line.strip().split(',') ]
#                print line_list
                self.GraphAdjList[line_list[0]].add(line_list[1])
                self.GraphAdjList[line_list[1]].add(line_list[0])

    def graph_traverse(self, start, end, callback=None):
        result = []
        parent_child_dict = {start:-1}
        open_queue = deque()
        close_queue = deque()
        open_queue.append(start)

        while open_queue.count > 0:
            cur = open_queue.popleft()
            if cur in close_queue:
                continue
            else:
                close_queue.append(cur)

            if cur == end:
                break

            for i in self.GraphAdjList[cur]:
                if i not in open_queue and i not in close_queue:
                    parent_child_dict[i] = cur
                    open_queue.append(i)

        parent = end
        while parent != -1:
#            print parent,
            result.append(parent)
            parent = parent_child_dict[parent]

        result.reverse()
        print result

if __name__ == '__main__':
    g = Graph('dat0.txt')
#    print g.GraphAdjList.items()
    g.graph_traverse(1,6)
