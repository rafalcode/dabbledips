#!/usr/bin/env python3
# this script does what?
import sys 
import cv2 as cv

argquan=len(sys.argv)
if argquan != 0:
   print("This script requires no arguments")
   sys.exit(2)

# refer to arguments with sys.argv[1] etc.
img = cv.imread(cv.samples.findFile("aero3.jpg"))
if img is None:
    sys.exit("Could not read the image.")
cv.imshow("Display window", img)
k = cv.waitKey(0)
if k == ord("s"):
    cv.imwrite("aero3.png", img)
