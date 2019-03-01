import sys
import socket

if len(sys.argv) > 2:
    PORT = int(sys.argv[2])
    HOST = sys.argv[1]

    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((HOST, PORT))
        message = input("MESSAGE: ")
        s.sendall(bytes(message, 'utf-8'))
        data = s.recv(1024)

    print("RESPONSE: ", data.decode('utf-8'))

else:
    print("Missing port number.\n python3 pa1-client.py <host> <port>")
