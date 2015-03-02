<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="slzatz.20150221212912.2" a="E"><vh>@path C:/Users/szatz/micropython</vh>
<v t="slzatz.20150221210914.86"><vh>@clean upython-uart.py</vh>
<v t="slzatz.20150221210914.87"><vh>upython-uart declarations</vh></v>
</v>
<v t="slzatz.20150221210914.41"><vh>@clean pyboard.py</vh>
<v t="slzatz.20150221210914.42"><vh>instructions</vh></v>
<v t="slzatz.20150221213319.3"><vh>imports</vh></v>
<v t="slzatz.20150221210914.43"><vh>class PyboardError</vh></v>
<v t="slzatz.20150221210914.44"><vh>class Pyboard</vh>
<v t="slzatz.20150221210914.45"><vh>__init__</vh></v>
<v t="slzatz.20150221210914.46"><vh>close</vh></v>
<v t="slzatz.20150221210914.47"><vh>read_until</vh></v>
<v t="slzatz.20150221210914.48"><vh>enter_raw_repl</vh></v>
<v t="slzatz.20150221210914.49"><vh>exit_raw_repl</vh></v>
<v t="slzatz.20150221210914.50"><vh>follow</vh></v>
<v t="slzatz.20150221210914.51"><vh>exec_raw</vh></v>
<v t="slzatz.20150221210914.52"><vh>eval</vh></v>
<v t="slzatz.20150221210914.53"><vh>exec</vh></v>
<v t="slzatz.20150221210914.54"><vh>execfile</vh></v>
<v t="slzatz.20150221210914.55"><vh>get_time</vh></v>
</v>
<v t="slzatz.20150221210914.56"><vh>execfile</vh></v>
<v t="slzatz.20150221210914.57"><vh>run_test</vh></v>
<v t="slzatz.20150221210914.58"><vh>main</vh></v>
<v t="slzatz.20150221213319.2"><vh>if __name__ = "__main__":</vh></v>
</v>
<v t="slzatz.20150301203107.2" a="E"><vh>@clean upython_wifi.py</vh>
<v t="slzatz.20150301203107.3"><vh>upython_wifi declarations</vh></v>
<v t="slzatz.20150301203107.4"><vh>tcp_client</vh></v>
<v t="slzatz.20150301203107.5"><vh>tcp_server</vh></v>
<v t="slzatz.20150301203107.6"><vh>main</vh></v>
</v>
<v t="slzatz.20150221210914.59"><vh>@clean upython-dac.py</vh>
<v t="slzatz.20150221210914.60"><vh>upython-dac declarations</vh></v>
</v>
<v t="slzatz.20150221210914.61"><vh>@clean upython-flash-leds.py</vh>
<v t="slzatz.20150221210914.62"><vh>upython-flash-leds declarations</vh></v>
</v>
<v t="slzatz.20150221210914.63"><vh>@clean upython-game-of-life.py</vh>
<v t="slzatz.20150221210914.64"><vh>upython-game-of-life declarations</vh></v>
<v t="slzatz.20150221210914.65"><vh>def big_pixel</vh></v>
<v t="slzatz.20150221210914.66"><vh>def conway_step</vh></v>
<v t="slzatz.20150221210914.90"><vh>rest of program</vh></v>
</v>
<v t="slzatz.20150221210914.67"><vh>@clean upython-neopixels.py</vh>
<v t="slzatz.20150221210914.68"><vh>upython-neopixels declarations</vh></v>
<v t="slzatz.20150221210914.69"><vh>class NeoPixel</vh>
<v t="slzatz.20150221210914.70"><vh>__init__</vh></v>
<v t="slzatz.20150221210914.71"><vh>__len__</vh></v>
<v t="slzatz.20150221210914.72"><vh>__setitem__</vh></v>
<v t="slzatz.20150221210914.73"><vh>clear</vh></v>
<v t="slzatz.20150221210914.74"><vh>send</vh></v>
<v t="slzatz.20150221210914.75"><vh>fillword</vh></v>
</v>
<v t="slzatz.20150221210914.91"><vh>rest of program</vh></v>
</v>
<v t="slzatz.20150221210914.76"><vh>@clean upython-pins.py</vh>
<v t="slzatz.20150221210914.77"><vh>upython-pins declarations</vh></v>
</v>
<v t="slzatz.20150221210914.78"><vh>@clean upython-pulse-intensity.py</vh>
<v t="slzatz.20150221210914.79"><vh>upython-pulse-intensity declarations</vh></v>
</v>
<v t="slzatz.20150221210914.80"><vh>@clean upython-pwm.py</vh>
<v t="slzatz.20150221210914.81"><vh>upython-pwm declarations</vh></v>
</v>
<v t="slzatz.20150221210914.82"><vh>@clean upython-simple-led.py</vh>
<v t="slzatz.20150221210914.83"><vh>upython-simple-led declarations</vh></v>
</v>
<v t="slzatz.20150221210914.84"><vh>@clean upython-timer.py</vh>
<v t="slzatz.20150221210914.85"><vh>upython-timer declarations</vh></v>
</v>
</v>
<v t="slzatz.20150221210914.40"><vh>NewHeadline</vh></v>
</vnodes>
<tnodes>
<t tx="slzatz.20150221210914.40"></t>
<t tx="slzatz.20150221210914.41">@language python
@tabwidth -4
@others

</t>
<t tx="slzatz.20150221210914.42">#!/usr/bin/env python

"""
pyboard interface

This module provides the Pyboard class, used to communicate with and
control the pyboard over a serial USB connection.

Example usage:

    import pyboard
    pyb = pyboard.Pyboard('/dev/ttyACM0')
    pyb.enter_raw_repl()
    pyb.exec('pyb.LED(1).on()')
    pyb.exit_raw_repl()

To run a script from the local machine on the board and print out the results:

    import pyboard
    pyboard.execfile('test.py', device='/dev/ttyACM0')

This script can also be run directly.  To execute a local script, use:

    ./pyboard.py test.py

Or:

    python pyboard.py test.py

"""



</t>
<t tx="slzatz.20150221210914.43">class PyboardError(BaseException):
    pass

</t>
<t tx="slzatz.20150221210914.44">class Pyboard:
    @others
</t>
<t tx="slzatz.20150221210914.45">def __init__(self, serial_device):
    self.serial = serial.Serial(serial_device, baudrate=115200, interCharTimeout=1)

</t>
<t tx="slzatz.20150221210914.46">def close(self):
    self.serial.close()

</t>
<t tx="slzatz.20150221210914.47">def read_until(self, min_num_bytes, ending, timeout=10, data_consumer=None):
    data = self.serial.read(min_num_bytes)
    if data_consumer:
        data_consumer(data)
    timeout_count = 0
    while True:
        if data.endswith(ending):
            break
        elif self.serial.inWaiting() &gt; 0:
            new_data = self.serial.read(1)
            data = data + new_data
            if data_consumer:
                data_consumer(new_data)
            #time.sleep(0.01)
            timeout_count = 0
        else:
            timeout_count += 1
            if timeout is not None and timeout_count &gt;= 10 * timeout:
                break
            time.sleep(0.1)
    return data

</t>
<t tx="slzatz.20150221210914.48">def enter_raw_repl(self):
    self.serial.write(b'\r\x03\x03') # ctrl-C twice: interrupt any running program
    self.serial.write(b'\r\x01') # ctrl-A: enter raw REPL
    data = self.read_until(1, b'to exit\r\n&gt;')
    if not data.endswith(b'raw REPL; CTRL-B to exit\r\n&gt;'):
        print(data)
        raise PyboardError('could not enter raw repl')
    self.serial.write(b'\x04') # ctrl-D: soft reset
    data = self.read_until(1, b'to exit\r\n&gt;')
    if not data.endswith(b'raw REPL; CTRL-B to exit\r\n&gt;'):
        print(data)
        raise PyboardError('could not enter raw repl')

</t>
<t tx="slzatz.20150221210914.49">def exit_raw_repl(self):
    self.serial.write(b'\r\x02') # ctrl-B: enter friendly REPL

</t>
<t tx="slzatz.20150221210914.50">def follow(self, timeout, data_consumer=None):
    # wait for normal output
    data = self.read_until(1, b'\x04', timeout=timeout, data_consumer=data_consumer)
    if not data.endswith(b'\x04'):
        raise PyboardError('timeout waiting for first EOF reception')
    data = data[:-1]

    # wait for error output
    data_err = self.read_until(2, b'\x04&gt;', timeout=timeout)
    if not data_err.endswith(b'\x04&gt;'):
        raise PyboardError('timeout waiting for second EOF reception')
    data_err = data_err[:-2]

    # return normal and error output
    return data, data_err

</t>
<t tx="slzatz.20150221210914.51">def exec_raw(self, command, timeout=10, data_consumer=None):
    if isinstance(command, bytes):
        command_bytes = command
    else:
        command_bytes = bytes(command, encoding='ascii')

    # write command
    for i in range(0, len(command_bytes), 256):
        self.serial.write(command_bytes[i:min(i + 256, len(command_bytes))])
        time.sleep(0.01)
    self.serial.write(b'\x04')

    # check if we could exec command
    data = self.serial.read(2)
    if data != b'OK':
        raise PyboardError('could not exec command')

    return self.follow(timeout, data_consumer)

</t>
<t tx="slzatz.20150221210914.52">def eval(self, expression):
    ret = self.exec('print({})'.format(expression))
    ret = ret.strip()
    return ret

</t>
<t tx="slzatz.20150221210914.53">def exec(self, command):
    ret, ret_err = self.exec_raw(command)
    if ret_err:
        raise PyboardError('exception', ret, ret_err)
    return ret

</t>
<t tx="slzatz.20150221210914.54">def execfile(self, filename):
    with open(filename) as f:
        pyfile = f.read()
    return self.exec(pyfile)

</t>
<t tx="slzatz.20150221210914.55">def get_time(self):
    t = str(self.eval('pyb.RTC().datetime()'), encoding='ascii')[1:-1].split(', ')
    return int(t[4]) * 3600 + int(t[5]) * 60 + int(t[6])

</t>
<t tx="slzatz.20150221210914.56">#def execfile(filename, device='/dev/ttyACM0'):
def execfile(filename, device='COM4'):
    pyb = Pyboard(device)
    pyb.enter_raw_repl()
    output = pyb.execfile(filename)
    print(str(output, encoding='ascii'), end='')
    pyb.exit_raw_repl()
    pyb.close()

</t>
<t tx="slzatz.20150221210914.57">def run_test(device):
    pyb = Pyboard(device)
    pyb.enter_raw_repl()
    print('opened device {}'.format(device))

    pyb.exec('import pyb')  # module pyb no longer imported by default, required for pyboard tests
    print('seconds since boot:', pyb.get_time())

    pyb.exec('def apply(l, f):\r\n for item in l:\r\n  f(item)\r\n')

    pyb.exec('leds=[pyb.LED(l) for l in range(1, 5)]')
    pyb.exec('apply(leds, lambda l:l.off())')

    ## USR switch test

    pyb.exec('switch = pyb.Switch()')

    for i in range(2):
        print("press USR button")
        pyb.exec('while switch(): pyb.delay(10)')
        pyb.exec('while not switch(): pyb.delay(10)')

    print('USR switch passed')

    ## accel test

    if True:
        print("hold level")
        pyb.exec('accel = pyb.Accel()')
        pyb.exec('while abs(accel.x()) &gt; 10 or abs(accel.y()) &gt; 10: pyb.delay(10)')

        print("tilt left")
        pyb.exec('while accel.x() &gt; -10: pyb.delay(10)')
        pyb.exec('leds[0].on()')

        print("tilt forward")
        pyb.exec('while accel.y() &lt; 10: pyb.delay(10)')
        pyb.exec('leds[1].on()')

        print("tilt right")
        pyb.exec('while accel.x() &lt; 10: pyb.delay(10)')
        pyb.exec('leds[2].on()')

        print("tilt backward")
        pyb.exec('while accel.y() &gt; -10: pyb.delay(10)')
        pyb.exec('leds[3].on()')

        print('accel passed')

    print('seconds since boot:', pyb.get_time())

    pyb.exec('apply(leds, lambda l:l.off())')

    pyb.exit_raw_repl()
    pyb.close()

</t>
<t tx="slzatz.20150221210914.58">def main():
    import argparse
    cmd_parser = argparse.ArgumentParser(description='Run scripts on the pyboard.')
    cmd_parser.add_argument('--device', default='COM4', help='the serial device of the pyboard')
    cmd_parser.add_argument('--test', action='store_true', help='run a small test suite on the pyboard')
    cmd_parser.add_argument('files', nargs='*', help='input files')
    args = cmd_parser.parse_args()

    if args.test:
        run_test(device=args.device)

    if len(args.files) == 0:
        try:
            pyb = Pyboard(args.device)
            ret, ret_err = pyb.follow(timeout=None, data_consumer=lambda d:print(str(d, encoding='ascii'), end=''))
            pyb.close()
        except PyboardError as er:
            print(er)
            sys.exit(1)
        except KeyboardInterrupt:
            sys.exit(1)
        if ret_err:
            print(str(ret_err, encoding='ascii'), end='')
            sys.exit(1)

    for filename in args.files:
        try:
            pyb = Pyboard(args.device)
            pyb.enter_raw_repl()
            with open(filename) as f:
                pyfile = f.read()
            ret, ret_err = pyb.exec_raw(pyfile, timeout=None, data_consumer=lambda d:print(str(d, encoding='ascii'), end=''))
            pyb.exit_raw_repl()
            pyb.close()
        except PyboardError as er:
            print(er)
            sys.exit(1)
        except KeyboardInterrupt:
            sys.exit(1)
        if ret_err:
            print(str(ret_err, encoding='ascii'), end='')
            sys.exit(1)

</t>
<t tx="slzatz.20150221210914.59">@language python
@tabwidth -4
@others
</t>
<t tx="slzatz.20150221210914.60"># DAC and ADC
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
    pyb.delay(5)</t>
<t tx="slzatz.20150221210914.61">@language python
@tabwidth -4
@others
</t>
<t tx="slzatz.20150221210914.62"># flash LEDs randomly
import pyb
leds = [pyb.LED(i+1) for i in range(4)]
for i in range(100):
    leds[pyb.rng() % len(leds)].toggle()
    pyb.delay(50)</t>
<t tx="slzatz.20150221210914.63">@language python
@tabwidth -4
@others
</t>
<t tx="slzatz.20150221210914.64"># Conway's Game of Life
import pyb

PIXEL_SIZE = const(4)

# we use big pixels so it's easier to see
</t>
<t tx="slzatz.20150221210914.65">@micropython.viper
def big_pixel(x:int, y:int, col):
    pixel = lcd.pixel
    for i in range(PIXEL_SIZE):
        for j in range(PIXEL_SIZE):
            pixel(x + i, y + j, col)

</t>
<t tx="slzatz.20150221210914.66"># do 1 iteration of Conway's Game of Life
@micropython.viper
def conway_step(lcd):
    get = lcd.get
    for x in range(0, 128, PIXEL_SIZE):
        for y in range(0, 32, PIXEL_SIZE):
            self = int(get(x, y))

            # count number of neigbours
            neighbours = int(
                get(x - PIXEL_SIZE, y - PIXEL_SIZE) +
                get(x, y - PIXEL_SIZE) +
                get(x + PIXEL_SIZE, y - PIXEL_SIZE) +
                get(x - PIXEL_SIZE, y) +
                get(x + PIXEL_SIZE, y) +
                get(x + PIXEL_SIZE, y + PIXEL_SIZE) +
                get(x, y + PIXEL_SIZE) +
                get(x - PIXEL_SIZE, y + PIXEL_SIZE)
            )

            # apply the rules of life
            if self and not 2 &lt;= neighbours &lt;= 3:
                big_pixel(x, y, 0)
            elif not self and neighbours == 3:
                big_pixel(x, y, 1)

</t>
<t tx="slzatz.20150221210914.67">@language python
@tabwidth -4
@others</t>
<t tx="slzatz.20150221210914.68"># driver for Adafruit neo pixels (WS2812 chip)
import pyb

</t>
<t tx="slzatz.20150221210914.69">class NeoPixel:
    @others
</t>
<t tx="slzatz.20150221210914.70">def __init__(self, spi, n):
    spi.init(spi.MASTER, baudrate=2625000)
    spi.send(0)
    self.spi = spi
    self.buf = bytearray(9 * n + 1)
    self.clear()

</t>
<t tx="slzatz.20150221210914.71">def __len__(self):
    return (len(self.buf) - 1) // 9

</t>
<t tx="slzatz.20150221210914.72">def __setitem__(self, idx, val):
    idx *= 9
    self.fillword(idx, val[1]) # green
    self.fillword(idx + 3, val[0]) # red
    self.fillword(idx + 6, val[2]) # blue

</t>
<t tx="slzatz.20150221210914.73">def clear(self):
    for i in range(len(self)):
        self[i] = (0, 0, 0)

</t>
<t tx="slzatz.20150221210914.74">def send(self):
    self.spi.send(self.buf)

</t>
<t tx="slzatz.20150221210914.75">def fillword(self, idx, val):
    expval = 0
    for i in range(8):
        expval &lt;&lt;= 3
        if val &amp; 0x80:
            expval |= 0b110
        else:
            expval |= 0b100
        val &lt;&lt;= 1
    self.buf[idx] = expval &gt;&gt; 16
    self.buf[idx + 1] = expval &gt;&gt; 8
    self.buf[idx + 2] = expval

</t>
<t tx="slzatz.20150221210914.76">@language python
@tabwidth -4
@others
</t>
<t tx="slzatz.20150221210914.77"># GPIO
from pyb import Pin

# create output and input pins (connected together)
pin_out = Pin('Y9', Pin.OUT_PP)
pin_in = Pin('Y10', Pin.IN)

# set output and read input pins
pin_out.high()
print(pin_in.value())
pin_out.low()
print(pin_in.value())</t>
<t tx="slzatz.20150221210914.78">@language python
@tabwidth -4
@others
</t>
<t tx="slzatz.20150221210914.79"># pulse the intensite of the blue LED
import pyb, math
for i in range(200):
    pyb.LED(4).intensity(int(255 * math.sin(i * math.pi / 100)**2))
    pyb.delay(25)</t>
<t tx="slzatz.20150221210914.80">@language python
@tabwidth -4
@others
</t>
<t tx="slzatz.20150221210914.81"># PWM and ADC
import pyb
from pyb import Pin, Timer, ADC

# create 50% duty cycle at 10Hz on pin X6
ch = Timer(2, freq=10).channel(1, Timer.PWM, pin=Pin('X6'))
ch.pulse_width_percent(50)

# read PWM output using ADC on pin X19
pin = ADC(Pin('X19'))
for x in range(50):
    print('-' * int(40 * pin.read() / 4095), 'O', sep='')
    pyb.delay(10)</t>
<t tx="slzatz.20150221210914.82">@language python
@tabwidth -4
@others
</t>
<t tx="slzatz.20150221210914.83"># turn on an LED and print text
import pyb
pyb.LED(1).on()
print('Hello Micro Python!')</t>
<t tx="slzatz.20150221210914.84">@language python
@tabwidth -4
@others
</t>
<t tx="slzatz.20150221210914.85"># timer interrupts
from pyb import LED, Timer

# create a timer running at 2Hz
tim = Timer(1, freq=2)

# set a callback to be called at 2Hz
tim.callback(lambda t: LED(2).toggle())</t>
<t tx="slzatz.20150221210914.86">@language python
@tabwidth -4
@others
</t>
<t tx="slzatz.20150221210914.87"># UART
from pyb import UART

# create UART object (on Y9, Y10, connected together)
uart = UART(3, baudrate=9600)

# write data
uart.write('hello!')

# read data
print(uart.read())</t>
<t tx="slzatz.20150221210914.90"># create LCD object
lcd = pyb.LCD('Y')
lcd.light(True)

# randomise the start
for x in range(0, 128, PIXEL_SIZE):
    for y in range(0, 32, PIXEL_SIZE):
        big_pixel(x, y, pyb.rng() &amp; 1)
lcd.show()

# run Conway's Game of Life
for i in range(50):
    conway_step(lcd)
    lcd.show()
    pyb.delay(100)</t>
<t tx="slzatz.20150221210914.91"># create a driver on SPI(1) with 8 pixels
ws = NeoPixel(pyb.SPI(1), 8)

# scroll one white pixel
for i in range(48):
    ws.clear()
    ws[i % len(ws)] = (64, 64, 64)
    ws.send()
    pyb.delay(50)

# turn all pixels off
ws.clear()
ws.send()</t>
<t tx="slzatz.20150221212912.2"></t>
<t tx="slzatz.20150221213319.2">if __name__ == "__main__":
    main()</t>
<t tx="slzatz.20150221213319.3">import sys
import time
import serial
</t>
<t tx="slzatz.20150301203107.2">@language python
@tabwidth -4
@others



</t>
<t tx="slzatz.20150301203107.3">import sys
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

</t>
<t tx="slzatz.20150301203107.4">def tcp_client():
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

</t>
<t tx="slzatz.20150301203107.5">def tcp_server():
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

</t>
<t tx="slzatz.20150301203107.6">tcp_client()

sw = pyb.Switch()
sw.callback(tcp_client)

while True:
    pyb.delay(100)</t>
</tnodes>
</leo_file>
