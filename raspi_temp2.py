import serial
import sys
import platform
from time import sleep
import config as c
import boto.sqs
from boto.sqs.message import Message

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

    sleep(600)

