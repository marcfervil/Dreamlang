import sys
import os

sys.path.append(path)

from parser import *
from lexar import *
from runtime import Dream




def build(file_name):
    file = open(file_name).read()
    Dream(file).compile(False, True, file_name)

def test():
    print("yes!")