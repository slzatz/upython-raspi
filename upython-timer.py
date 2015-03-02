# timer interrupts
from pyb import LED, Timer

# create a timer running at 2Hz
tim = Timer(1, freq=2)

# set a callback to be called at 2Hz
tim.callback(lambda t: LED(2).toggle())
