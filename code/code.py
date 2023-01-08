import time
import board
import digitalio
import usb_hid

# Consumer Control for the media keys
from adafruit_hid.consumer_control import ConsumerControl
from adafruit_hid.consumer_control_code import ConsumerControlCode

cc = ConsumerControl(usb_hid.devices)


# Assign the pins that we are using for the tactile switches
btn_scrolldown = digitalio.DigitalInOut(board.GP4) 
btn_scrolldown.switch_to_input(pull=digitalio.Pull.UP)
btn_scrollup = digitalio.DigitalInOut(board.GP5) 
btn_scrollup.switch_to_input(pull=digitalio.Pull.UP)

btn_tripdown = digitalio.DigitalInOut(board.GP3) 
btn_tripdown.switch_to_input(pull=digitalio.Pull.UP)
btn_tripup = digitalio.DigitalInOut(board.GP2)
btn_tripup.switch_to_input(pull=digitalio.Pull.UP)

# This is probably not the best way of doing things, but it works
# The RallyMoto App and the Rally Navigator App both use the same
# keys for scrolling the roadbook as well as changing the trip
# Next/Prev Media track for scrolling the roadbook
# Volume up / Down for altering the trip meter.
# ChefKiss.gif
while(True):
    if not btn_scrolldown.value:
        cc.send(ConsumerControlCode.SCAN_NEXT_TRACK)
    elif not btn_scrollup.value:
        cc.send(ConsumerControlCode.SCAN_PREVIOUS_TRACK)
    elif not btn_tripdown.value:
        cc.send(ConsumerControlCode.VOLUME_DECREMENT)
    elif not btn_tripup.value:
        cc.send(ConsumerControlCode.VOLUME_INCREMENT)

    time.sleep(0.2)


