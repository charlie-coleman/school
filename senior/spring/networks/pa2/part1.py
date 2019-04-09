import sys, random, os

fInName = "generic.conf"
if ((len(sys.argv)-1) == 0):
    raise Exception("Improper format: python3 part1.py <file in> <file out>")
elif ((len(sys.argv)-1) >= 1):
    fInName = sys.argv[1]

fOutName = os.path.splitext(fInName)[0]+".out"
if ((len(sys.argv)-1) >= 2):
    fOutName = sys.argv[2]

fIn = open(fInName, 'r')
fOut = open(fOutName, 'w')

def connections(node, arr, orig ):
    conns = []
    addConns = [node]
    orig.append(node)
    for i in range(0,nodes):
        if (arr[node][i] and i != node and i not in orig):
            conns.append(i)
    for conn in conns:
        newConns = connections(conn, arr, orig)
        if newConns:
            addConns.extend(newConns)
    conns.extend(addConns)
    conns.sort()
    return list(dict.fromkeys(conns))

def randStrInt(minVal,maxVal):
    return str(random.randint(minVal,maxVal))

def printAdjMatrix(arr):
    [print("\t".join([str(arr[i][j]) for j in range(0,nodes)])) for i in range(0,nodes)]

for line in fIn.read().splitlines():
    param = [x.strip() for x in line.upper().split(':')]
    if (param[0] == "NODES"):
        nodes = int(param[1])
    elif (param[0] == "TOPOLOGY"):
        topology = param[1]
    elif (param[0] == "ALPHA"):
        alpha = float(param[1])
    elif (param[0] == "NODE-MIN"):
        nodeMin = int(param[1])
    elif (param[0] == "NODE-MAX"):
        nodeMax = int(param[1])
    elif (param[0] == "LINK-MIN"):
        linkMin = int(param[1])
    elif (param[0] == "LINK-MAX"):
        linkMax = int(param[1])

nodeWeights = [randStrInt(nodeMin, nodeMax) for i in range(0, nodes)]

if (topology == "LINEAR"):
    for i in range(0, nodes-1):
        line = str(i) + "\t" + str(i+1) + "\t" + randStrInt(linkMin, linkMax)+"\n"
        fOut.write(line)
    fOut.write("\t".join(nodeWeights) + "\n")
if (topology == "FULL"):
    for i in range(0, nodes-1):
        for j in range(i+1, nodes):
            line = str(i) + "\t" + str(j)+"\t" + randStrInt(linkMin, linkMax)+"\n"
            fOut.write(line)
    fOut.write("\t".join(nodeWeights) + "\n")
if (topology == "STAR"):
    for i in range(1, nodes):
        line = "0\t" + str(i) + "\t" + randStrInt(linkMin, linkMax)+"\n"
        fOut.write(line)
    fOut.write("\t".join(nodeWeights) + "\n")
if (topology == "RANDOM"):
    arr = [[False for i in range(0, nodes)] for i in range(0, nodes)]
    x = 0
    while True:
        for i in range(0, nodes):
            for j in range(i+1, nodes):
                arr[i][j] = arr[j][i] = (random.random() < alpha)
            arr[i][i] = True
        if (connections(0,arr,[]) == [i for i in range(0, nodes)]):
            break
        x+=1
        if (x > 1000):
            print("ERROR: Could not generate a connected graph. Perhaps choose a different alpha or number of nodes?\n")
            break
    for i in range(0,nodes-1):
        for j in range(i+1,nodes):
            if (arr[i][j]):
                line = str(i) + "\t" + str(j) + "\t" + randStrInt(linkMin,linkMax) + "\n"
                fOut.write(line)
    fOut.write("\t".join(nodeWeights) + "\n")
