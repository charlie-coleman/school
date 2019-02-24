import sys
import time
import socket

pphase = ''
mtype = ''
msgsize = 1024
probes = 0
delay = 0
errormsg = "404 ERROR: Invalid Connection Setup Message"
mperrormsg = "404 ERROR: Invalid Measurement Message"
successmsg = "200 OK: Ready"
ctpsuccessmsg = "200 OK: Closing Connection"
ctperrormsg = "404 ERROR: Invalid Connection Termination Message"

def recmsg(conn, size):
    data = conn.recv(size)
    return data if not data else data.decode('utf-8').split('\n')[0];

def csp(conn, msg):
    global pphase, mtype, msgsize, probes, delay
    params = msg.split()
    if len(params) != 5:
        conn.sendall(bytes(errormsg, 'utf-8'))
        return False
    pphase = params[0]
    mtype = params[1]
    msgsize = int(params[2])
    probes = int(params[3])
    delay = int(params[4])
    if (pphase != 's') or (mtype != 'rtt' and mtype != 'tput') or (delay < 0) or (probes < 0) or (msgsize < 0):
        conn.sendall(bytes(errormsg, 'utf-8'));
        return False
    else:
        conn.sendall(bytes(successmsg, 'utf-8'))
        return True

def mp(conn, msg, index):
    global pphase
    params = msg.split()
    if len(params) < 3:
        conn.sendall(bytes(mperrormsg, 'utf-8'))
        return False
    pphase = params[0]
    payload = " ".join(params[1:len(params)-1])
    psn = int(params[len(params)-1])
    if (pphase != 'm') or psn != index:
        conn.sendall(bytes(mperrormsg, 'utf-8'))
        return False
    else:
        time.sleep(delay/1000)
        conn.sendall(bytes(msg, 'utf-8'))
        return True

def ctp(conn, msg):
    if (msg != "t"):
        conn.sendall(bytes(ctperrormsg, 'utf-8'))
        return False
    else:
        conn.sendall(bytes(ctpsuccessmsg, 'utf-8'))
        return True

if len(sys.argv) > 1:
    PORT = int(sys.argv[1])
    HOST = "127.0.0.1"

    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.bind((HOST, PORT))
        s.listen()
        while True:
            conn,addr = s.accept()
            with conn:
                print("Recieved connection from ", addr)
                data = recmsg(conn, 1024)
                if data:
                    success = csp(conn, data);
                if success:
                    for i in range(1, probes+1):
                        data = ""
                        data = recmsg(conn, msgsize)
                        if not data:
                            break
                        success = mp(conn, data, i)
                        if not success:
                            break
                    data = recmsg(conn, 1024)
                    if data:
                        ctp(conn, data)
else:
    print("Missing port number.\n python3 pa1-server.py <port>")
