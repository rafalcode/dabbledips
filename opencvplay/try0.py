#!/usr/bin/env python3
# this script does what?
import sys 
import numpy as np
import cv2

argquan=len(sys.argv)
if argquan != 0:
   print("This script requires no arguments")
   sys.exit(2)

im = cv2.imread('aero3.jpg')
imgray = cv2.cvtColor(im,cv2.COLOR_BGR2GRAY)
ret,thresh = cv2.threshold(imgray,127,255,0)
im2, contours, hierarchy = cv2.findContours(thresh,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
