# DAC and ADC
import pyb, math
from pyb import Pin, DAC, ADC

# create a buffer containing a sine-wave
buf = bytearray(100)
for i in range(len(buf)):
    buf[i] = 128 + int(127 * math.sin(2 * math.pi * i / len(buf)))

# output the sine-wave at 10Hz on pin X6
dac = DAC(2)
dac.write_timed(buf, 10 * len(buf), mode=DAC.CIRCULAR)

# read DAC output using ADC on pin X19
pin = ADC(Pin('X19'))
for x in range(50):
    print('-' * int(40 * pin.read() / 4095), 'O', sep='')
    pyb.delay(5)
