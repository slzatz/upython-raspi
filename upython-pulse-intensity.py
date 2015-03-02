# pulse the intensite of the blue LED
import pyb, math
for i in range(200):
    pyb.LED(4).intensity(int(255 * math.sin(i * math.pi / 100)**2))
    pyb.delay(25)
