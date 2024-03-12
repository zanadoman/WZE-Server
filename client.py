import socket

SERVER = '127.0.0.1'
PORT = 49152
    
def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.settimeout(0.1)
    while True:
        try:
            sock.sendto(bytes('\0\0\0\0\0\0\0\0' + '\0\0\0\0\0\0\0\0' + input(), 'utf-8'), (SERVER, PORT))
        except KeyboardInterrupt:
            exit()

if __name__ == '__main__':
    main()
