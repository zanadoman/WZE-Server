import socket

SERVER = '127.0.0.1'
PORT = 49152

def send(sock):
    try:
        msg = input(SERVER + ':' + str(PORT) + '> ')
    except KeyboardInterrupt:
        exit()
    sock.sendto(bytes('\0\0\0\0\0\0\0\0' + '\0\0\0\0\0\0\0\0' + msg, 'utf-8'), (SERVER, PORT))

def receive(sock):
    try:
        print(str(sock.recv(256)))
    except TimeoutError:
        pass

def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.settimeout(0.1)

    while True:
        send(sock)
        receive(sock)

if __name__ == '__main__':
    main()
