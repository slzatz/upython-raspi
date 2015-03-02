# driver for Adafruit neo pixels (WS2812 chip)
import pyb

class NeoPixel:
    def __init__(self, spi, n):
        spi.init(spi.MASTER, baudrate=2625000)
        spi.send(0)
        self.spi = spi
        self.buf = bytearray(9 * n + 1)
        self.clear()

    def __len__(self):
        return (len(self.buf) - 1) // 9

    def __setitem__(self, idx, val):
        idx *= 9
        self.fillword(idx, val[1]) # green
        self.fillword(idx + 3, val[0]) # red
        self.fillword(idx + 6, val[2]) # blue

    def clear(self):
        for i in range(len(self)):
            self[i] = (0, 0, 0)

    def send(self):
        self.spi.send(self.buf)

    def fillword(self, idx, val):
        expval = 0
        for i in range(8):
            expval <<= 3
            if val & 0x80:
                expval |= 0b110
            else:
                expval |= 0b100
            val <<= 1
        self.buf[idx] = expval >> 16
        self.buf[idx + 1] = expval >> 8
        self.buf[idx + 2] = expval

# create a driver on SPI(1) with 8 pixels
ws = NeoPixel(pyb.SPI(1), 8)

# scroll one white pixel
for i in range(48):
    ws.clear()
    ws[i % len(ws)] = (64, 64, 64)
    ws.send()
    pyb.delay(50)

# turn all pixels off
ws.clear()
ws.send()
