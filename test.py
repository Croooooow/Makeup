import os
from PIL import Image

import sys
import random

image_path = sys.argv[1]
im = Image.open("./upload/"+image_path)
print im.size
