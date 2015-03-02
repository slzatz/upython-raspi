import sys
#import pyb
import network 
import socket
print('using CC3K driver')
print('creating')
pyb.Pin.board.Y4.low()
nic = network.CC3K(pyb.SPI(2), pyb.Pin('Y5'), pyb.Pin('Y4'), pyb.Pin('Y3'))
print('created')
nic.connect('8TC', 'm01lycat')
print('connecting')
while not nic.isconnected():
    pyb.delay(50)
print('connected')
print(nic.ifconfig())

def tcp_client():
    print('tcp client')
    addr = socket.getaddrinfo('micropython.org', 80)
    print(addr)
    s = socket.socket()
    print(s)
    print(s.connect(addr[0][-1]))
    print(s.send(b'GET http://micropython.org/ks/test.html HTTP/1.0\r\n\r\n'))
    while True:
        data = s.recv(100)
        if data:
            print(len(data), data)
        else:
            break
    s.close()
    print('done')

def tcp_server():
    import socket, time
    s = socket.socket()
    port = 8080
    s.bind(('', port))
    s.listen(5)
    for i in range(10):
        print("waiting for connection on port %d..." % port)
        cl, addr = s.accept()
        print(cl, addr)
        data = cl.recv(20)
        print(len(data), data)
        cl.send(b'here is some data\r\nback for you!\r\n')
        print('sent')
        time.sleep(2)
        cl.close()
    s.close() 

tcp_client()

sw = pyb.Switch()
sw.callback(tcp_client)

while True:
    pyb.delay(100)



