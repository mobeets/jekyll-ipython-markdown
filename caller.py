import os
import sys
import subprocess

IPYTHON_BIN_DIR = os.path.abspath(os.environ['IPYTHON_BIN_DIR'])
config = os.path.join(IPYTHON_BIN_DIR, "ipython.py")
path = os.path.abspath(sys.argv[-1])
cmd = ["ipython", "nbconvert", "--config", config, path]
subprocess.call(cmd)
