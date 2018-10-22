#!/usr/bin/env python3
import sys, io, os, shutil

def remove_folder(path):
    # check if folder exists
    if os.path.exists(path):
         # remove if exists
         shutil.rmtree(path)
#remove_folder("/folder_name")

path = sys.argv[1]
moveto = sys.argv[2]
if not os.path.exists(path) :
    print("pierwszy folder nie istnieje")
if not os.path.exists(moveto) :
    print("drugi folder nie istnieje")
files = os.listdir(path)
for f in files:
    ext = os.path.splitext(f)[-1].lower()
    if ext == ".txt":
        srcname = os.path.join(path, f)
        dstname = os.path.join(moveto, f)
        shutil.move(srcname, dstname)
remove_folder(path)
        



