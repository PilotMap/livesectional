

class GPIO:
    def setmode(mode):
        return

    def setup(self, **args):
        return

    def input(self):
        return 1

def Color(r, g, b):
    """
    The code has Color all over, but never defined. It just returns a set to pass back to the
    Adafruit library calls
    """
    return int("0x{:02x}{:02x}{:02x}".format(r, g, b), 16)

class PixelStrip:
    count = None

    def __init__(self, *args):
        self.count = args[0]
        return

    def begin(self):
        return

    def numPixels(self):
        return self.count

    def setPixelColor(self, *args):
        return
