# GPIO
from pyb import Pin

# create output and input pins (connected together)
pin_out = Pin('Y9', Pin.OUT_PP)
pin_in = Pin('Y10', Pin.IN)

# set output and read input pins
pin_out.high()
print(pin_in.value())
pin_out.low()
print(pin_in.value())
