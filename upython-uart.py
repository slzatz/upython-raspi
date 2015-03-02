# UART
from pyb import UART

# create UART object (on Y9, Y10, connected together)
uart = UART(3, baudrate=9600)

# write data
uart.write('hello!')

# read data
print(uart.read())
