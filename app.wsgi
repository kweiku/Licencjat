#!/usr/bin/python3.6

import os
import sys
import logging

logging.basicConfig(stream=sys.stderr)

here = os.path.dirname(__file__)
os.chdir(here)

sys.path.insert(0, '/home/epi/19_kwiek/dyplom')

from app import app as application