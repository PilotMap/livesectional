import subprocess
from leds import LedStrip

if __name__ == '__main__':
    # Create NeoPixel object with appropriate configuration.
    subprocess.run(['systemctl', 'stop', 'metar-v4'], capture_output=True)
    strip = LedStrip()
    strip.rainbow(3, 5)
    #strip.orange()
    subprocess.run(['systemctl', 'start', 'metar-v4'],capture_output=True)

