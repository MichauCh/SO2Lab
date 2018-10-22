#!/usr/bin/env python3
import sys
import io
import os

directory_name=sys.argv[1]
os.chdir(directory_name)
for x in range(0,10):
    with io.FileIO("plik" + str(x) +".txt", "w") as file:
        file.write('SO2'.encode())
