import sys
import time
from statistics import mean
import socket

mtype = 'rtt'
probes = 1500
delay = 0
rtt = [0 for i in range(0, probes)]
tput = 0
mpmessage = "0"*32000
msgsize = sys.getsizeof(bytes(mpmessage, 'utf-8')) + sys.getsizeof('m  2');
quiet = False

def csp(s, mtype, msgsize, probes, delay):
    msg = "s {0} {1} {2} {3}\n".format(mtype, msgsize, probes, delay)
    s.sendall(bytes(msg, 'utf-8'))

def mp(s, payload, psn):
    msg = "m {0} {1}\n".format(payload, psn)
    s.sendall(bytes(msg, 'utf-8'))

def ctp(s):
    msg = "t\n"
    s.sendall(bytes(msg, 'utf-8'))

def recmsg(s, size):
    data = s.recv(size)
    if not quiet:
        print(data.decode('utf-8'))
    return data.decode('utf-8')

if len(sys.argv) > 2:
    PORT = int(sys.argv[2])
    HOST = sys.argv[1]
    if len(sys.argv) == 4:
        quiet = (sys.argv[3] == '-q')
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((HOST, PORT))
        csp(s, mtype, msgsize, probes, delay)
        data = recmsg(s, msgsize)
        resp = data.split()
        if (resp[0] != "404"):
            tputstarttime = time.time();
            for i in range(1, probes+1):
                rttstarttime = time.time();
                mp(s, mpmessage, i);
                data = recmsg(s, msgsize);
                resp = data.split()
                rttendtime = time.time()
                rtt[i-1] = (rttendtime-rttstarttime)*1000
                if (resp[0] == "404"):
                    break
            tputendtime = time.time()
            tput  = msgsize*probes/(tputendtime-tputstarttime)
            ctp(s)
            data = recmsg(s, 1024)
        s.close()

    print("{0:.9f}ms, {1:.3f}Kb/s".format(mean(rtt), tput/1000))

else:
    print("Missing port number.\n python3 pa1-client.py <host> <port>")
