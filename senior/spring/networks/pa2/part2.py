from mininet.topo import Topo
import sys

filename = sys.argv[1]
fIn = open(filename, 'r')

class MyTopo(Topo):
