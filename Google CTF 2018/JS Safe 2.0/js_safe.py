#!/usr/bin/python3
# -*- coding: utf-8 -*-
import string
import sys

chars = string.ascii_uppercase + string.ascii_lowercase + string.digits + '_@!?-'
weird = u'¢×&Ê´cÊ¯¬$¶³´}ÍÈ´T©Ð8Í³Í|Ô÷aÈÐÝ&¨þJ'
n = 65521

# the pythonic version of c() from js_safe_2.html
def c(a, b):
	c2 = ''
	for i in range(len(a)):
		c2 += chr(ord(str(a[i])) ^ ord(str(b[i % len(b)])))
	return c2

# the slightly faster version of c() which returns immediately if resulting char is not in the list of expected chars
def fast_c(a, b):
	for i in range(len(a)):
		xor = chr(ord(str(a[i])) ^ ord(str(b[i % len(b)])))
		if not (xor in chars):
			return False
	return True

# started at a = 2714, b = 33310
for a in range(5625, n, 1):
	for b in range(33310, n, 1):
		# a = 5625; b = 64921
		sys.stdout.write('%d %d \r' % (a, b))
		key = chr(b >> 8) + chr(b & 0xFF) + chr(a >> 8) + chr(a & 0xFF)
		if fast_c(weird, key):
			inp = c(weird, key)
			print('(%d, %d) => %s' % (a, b, inp))
	break	# remove this

# _N3x7-v3R51ON-h45-AnTI-4NTi-ant1-D3bUg_
