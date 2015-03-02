# PWM and ADC
import pyb
from pyb import Pin, Timer, ADC

# create 50% duty cycle at 10Hz on pin X6
ch = Timer(2, freq=10).channel(1, Timer.PWM, pin=Pin('X6'))
ch.pulse_width_percent(50)

# read PWM output using ADC on pin X19
pin = ADC(Pin('X19'))
for x in range(50):
    print('-' * int(40 * pin.read() / 4095), 'O', sep='')
    pyb.delay(10)
