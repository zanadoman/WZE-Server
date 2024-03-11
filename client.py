import socket

SERVER = '127.0.0.1'
PORT = 49152

def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.settimeout(1)
    while True:
        sock.sendto(bytes(input(SERVER + ':' + str(PORT) + '> '), 'utf-8'), (SERVER, PORT))
        try:
            if sock.recv(1) == b'\x00':
                print('arrived')
            else:
                print('lost')
        except socket.timeout:
            print('timeout')

if __name__ == '__main__':
    main()