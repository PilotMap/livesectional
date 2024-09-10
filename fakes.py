

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

    def init(self, *args):
        return

    def begin(self):
        return

    def NumPixels(self):
        return 100

    def setPixelColor(self, *args):
        return
