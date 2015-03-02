# Conway's Game of Life
import pyb

PIXEL_SIZE = const(4)

# we use big pixels so it's easier to see
@micropython.viper
def big_pixel(x:int, y:int, col):
    pixel = lcd.pixel
    for i in range(PIXEL_SIZE):
        for j in range(PIXEL_SIZE):
            pixel(x + i, y + j, col)

# do 1 iteration of Conway's Game of Life
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
            if self and not 2 <= neighbours <= 3:
                big_pixel(x, y, 0)
            elif not self and neighbours == 3:
                big_pixel(x, y, 1)

# create LCD object
lcd = pyb.LCD('Y')
lcd.light(True)

# randomise the start
for x in range(0, 128, PIXEL_SIZE):
    for y in range(0, 32, PIXEL_SIZE):
        big_pixel(x, y, pyb.rng() & 1)
lcd.show()

# run Conway's Game of Life
for i in range(50):
    conway_step(lcd)
    lcd.show()
    pyb.delay(100)
