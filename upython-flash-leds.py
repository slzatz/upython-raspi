# flash LEDs randomly
import pyb
leds = [pyb.LED(i+1) for i in range(4)]
for i in range(100):
    leds[pyb.rng() % len(leds)].toggle()
    pyb.delay(50)
