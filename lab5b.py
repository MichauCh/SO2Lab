#!/usr/bin/env python3
import sys, io, os, shutil

def is_exe(fpath):
        return os.path.isfile(fpath) and os.access(fpath, os.X_OK)

path = sys.argv[1]
moveto = sys.argv[2]
files = os.listdir(path)
if files is None:
    print("brak plikow")
else:
    for f in files:
        if is_exe(f):
           srcname = os.path.join(path, f)
           dstname = os.path.join(moveto, f)
           shutil.move(srcname, dstname)



