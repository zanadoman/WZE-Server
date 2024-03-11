import socket

SERVER = '127.0.0.1'
PORT = 49152

def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.settimeout(1)
    while True:
        try:
            msg = input(SERVER + ':' + str(PORT) + '> ')
        except KeyboardInterrupt:
            exit()
        sock.sendto(bytes(msg, 'utf-8'), (SERVER, PORT))

if __name__ == '__main__':
    main()
