from __future__ import print_function
import os
import serial
import sys
import platform
import pygame
from time import sleep
import config as c
import boto.sqs
from boto.sqs.message import Message

if platform.machine() == 'armv6l':

    import RPi.GPIO as GPIO
    PINS = [23,22,27,18] #pins 1 through 4
    GPIO.setmode(GPIO.BCM)
    for pin in PINS:
        GPIO.setup(pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)

    os.putenv('SDL_VIDEODRIVER', 'fbcon')
    os.putenv('SDL_FBDEV', '/dev/fb1')
    os.putenv('SDL_MOUSEDEV', '/dev/input/touchscreen')
    os.putenv('SDL_MOUSEDRV', 'TSLIB')

elif platform.system() == 'Windows':
    os.environ['SDL_VIDEODRIVER'] = 'windib'

elif platform.system() == "Linux":
    os.environ['SDL_VIDEODRIVER'] = 'x11' #note: this works if you launch x (startx) and run terminal requires keyboard/mouse

else:
    sys.exit("Currently unsupported hardware/OS")

r = pygame.init()
print("display initiated:",r)

if platform.machine() == 'armv6l':
    pygame.mouse.set_visible(False)

w, h = pygame.display.Info().current_w, pygame.display.Info().current_h
if w > 1000:
    w = 1000
if h > 700:
    h = h - 100
screen = pygame.display.set_mode((w, h))

screen.fill((0,0,0))
font = pygame.font.SysFont('Sans', 40)
text = font.render("Temperature = 100 F", True, (255, 0, 0))
screen.blit(text, (30,30))
pygame.display.flip()

sleep(10)

conn = boto.sqs.connect_to_region(
    "us-east-1",
    aws_access_key_id=c.aws_access_key_id,
    aws_secret_access_key=c.aws_secret_access_key)

sqs_queue = conn.get_all_queues()[1]
#[Queue(https://queue.amazonaws.com/726344206365/sonos), Queue(https://queue.amazonaws.com/726344206365/temperature)]
if sqs_queue.name!='temperature':
    print("Queue isn't temperature")
    sys.exit()

if platform.machine() == 'armv6l':
    device = '/dev/ttyACM0'
    machine = 'raspi'
else:
    device = 'com3'
    machine = 'windows'

s = serial.Serial(device, timeout=1)
while True:
    try:
        s.write(b'pres')
    except serial.serialutil.SerialException as e:
        print(e)
        pressure = b'pyboard NA'
    else:
        sleep(.3)
        pressure = s.read(10) #text is bytes
    print(pressure)
    sleep(1)
    try:
        s.write(b'temp')
    except serial.serialutil.SerialException as e:
        print(e)
        temperature = b'pyboard NA'
    else:
        sleep(.3)
        temperature = s.read(10)
    print(temperature)

    screen.fill((0,0,0))
    font = pygame.font.SysFont('Sans', 40)
    text = font.render("Temperature = {:.1f} F".format(float(temperature)), True, (255, 0, 0))
    screen.blit(text, (30,30))
    pygame.display.flip()

    if pressure and temperature:
        
        m = Message()
        m.message_attributes = {
                                "temp": {
                                         "data_type": "String",
                                         "string_value": temperature.decode('utf-8')
                                        },
                                "pres": {
                                         "data_type":"String",
                                         "string_value": pressure.decode('utf-8')
                                        }
                                }
        
        m.set_body(machine)
        sqs_queue.write(m)
    else:
        print("nothing transmitted because for some reason no temp and pressure returned")

    sleep(1200)

