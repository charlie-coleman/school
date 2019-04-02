import sys, random, os

filename = sys.argv[1]

fIn = open(filename, 'r')
fOut = open(os.path.splitext(filename)[0]+".out", 'w')

def connections(node, arr, orig):
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

def randStrInt(min,max):
    return str(random.randint(min,max))

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

print(nodes,topology,alpha,nodeMin,nodeMax,linkMin,linkMax)

if (topology == "LINEAR"):
    nodeWeights = ""
    for i in range(0, nodes-1):
        line = str(i) + "\t" + str(i+1)+"\t" + randStrInt(linkMin, linkMax)+"\n"
        fOut.write(line)
        nodeWeights += randStrInt(nodeMin,nodeMax) + "\t"
    nodeWeights += randStrInt(nodeMin,nodeMax) + "\n"
    fOut.write(nodeWeights)
if (topology == "FULL"):
    nodeWeights = ""
    for i in range(0, nodes-1):
        for j in range(i+1, nodes):
            line = str(i) + "\t" + str(j)+"\t" + randStrInt(linkMin, linkMax)+"\n"
            fOut.write(line)
        nodeWeights += randStrInt(nodeMin, nodeMax) + "\t"
    nodeWeights += randStrInt(nodeMin, nodeMax) + "\n"
    fOut.write(nodeWeights)
if (topology == "STAR"):
    nodeWeights = ""
    for i in range(1, nodes):
        line = "0\t" + str(i) + "\t" + randStrInt(linkMin, linkMax)+"\n"
        fOut.write(line)
        nodeWeights += randStrInt(nodeMin,nodeMax) + "\t"
    nodeWeights += randStrInt(nodeMin, nodeMax) + "\n"
    fOut.write(nodeWeights)
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
    nodeWeights = ""
    for i in range(0,nodes-1):
        for j in range(i+1,nodes):
            if (arr[i][j]):
                line = str(i) + "\t" + str(j) + "\t" + randStrInt(linkMin,linkMax) + "\n"
                fOut.write(line)
        nodeWeights += randStrInt(nodeMin, nodeMax) + "\t"
    nodeWeights += randStrInt(nodeMin, nodeMax) + "\n"
    fOut.write(nodeWeights)
