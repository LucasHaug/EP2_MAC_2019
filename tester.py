from ctypes import *

print('\n')

l = CDLL("./test.so")
l.test_main()
