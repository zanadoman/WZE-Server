import socket

SERVER = '127.0.0.1'
PORT = 49152

def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    while True:
        try:
            sock.sendto(bytes(input(SERVER + ':' + str(PORT) + '> '), 'utf-8'), (SERVER, PORT))
        except:
            exit()

if __name__ == '__main__':
    main()