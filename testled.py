import time
import subprocess
from leds import LedStrip

if __name__ == '__main__':
    # Create NeoPixel object with appropriate configuration.
    subprocess.run(['systemctl', 'stop', 'metar-v4'], capture_output=True)
    strip = LedStrip()
    for i in range(strip.number):
        strip.setPixelColor(i,0xFF0000)
        strip.show_pixels()
        time.sleep(.1)

    #strip.orange()
    subprocess.run(['systemctl', 'start', 'metar-v4'],capture_output=True)

