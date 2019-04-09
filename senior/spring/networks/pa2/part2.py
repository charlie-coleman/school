from mininet.topo import Topo
from mininet.net import Mininet
import sys

filename = sys.argv[1]
fIn = open(filename, 'r')

conns = [line.split() for line in fIn.readlines()]
weights = conns[-1]
conns = conns[0:-1]
hosts = [0 for weight in weights]

class MyTopo(Topo):
    def build(self):
        for i in range(0, len(weights)):
            hosts[i] = self.addHost( "h%s" % i )
        for conn in conns:
            self.addLink(hosts[int(conn[0])], hosts[int(conn[1])])

topo = MyTopo()
