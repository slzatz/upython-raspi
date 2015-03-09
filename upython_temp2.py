# main.py -- put your code here!
import bmp180
b = bmp180.BMP180('Y')
b.oversample_sett = 2
b.baseline = 101325
u = pyb.USB_VCP()
led1 = pyb.LED(1)
led2 = pyb.LED(2)
led3 = pyb.LED(3)
while True:	
    led1.toggle()
    temp = b.temperature
    t = temp*1.8 + 32
    p = b.pressure
    data = u.recv(4)
    if data==b'temp':
        led2.on()
        u.send(str(t))
    elif data==b'pres':
        led3.on()
        u.send(str(p))
    elif data==b'stop':
        break
    pyb.delay(1000)
    led2.off()
    led3.off()

