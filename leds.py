from rpi_ws281x import PixelStrip

# LED strip configuration:
LED_COUNT      = 60        # Number of LED pixels.
LED_PIN        = 18          # GPIO pin connected to the pixels (18 uses PWM!).
LED_FREQ_HZ    = 800000  # LED signal frequency in hertz (usually 800khz)
LED_DMA        = 10          # DMA channel to use for generating signal (try 10)
LED_BRIGHTNESS = 255  # Set to 0 for darkest and 255 for brightest
LED_INVERT     = False    # True to invert the signal (when using NPN transistor level shift)
LED_CHANNEL     = 0       # set to '1' for GPIOs 13, 19, 41, 45 or 53


class LedStrip:
    def __init__(self):
        self.strip = PixelStrip(LED_COUNT,
                           LED_PIN,
                           LED_FREQ_HZ,
                           LED_DMA,
                           LED_INVERT,
                           LED_BRIGHTNESS,
                           LED_CHANNEL)
        self.strip.begin()
        self.number = self.strip.numPixels()

    def setPixelColor(self, led, color):
        self.setPixelColor(led, color)

    def show(self):
        self.strip.show()

    def setBrightness(self,brightness):
        self.strip.setBrightness(LED_BRIGHTNESS)

