import sys
import socket

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
                while True:
                    data = conn.recv(1024)
                    if not data:
                        break
                    print(data)
                    conn.sendall(data)
else:
    print("Missing port number.\n python3 pa1-server.py <port>")
