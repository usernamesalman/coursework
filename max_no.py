Python 2.7.10 (default, May 23 2015, 09:40:32) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> ef highest(x,y):
	if (x>y):
		print("max")
	else:
		print("min")



SyntaxError: invalid syntax
>>> def highest(p1,p2,p3):
    if (p1>p2) and (p1>p3):
        return "p1"
    if (p2>p1) and (p2>p3):
        return "p2"
    if (p3>p1) and (p3>p2):
        return "p3"

>>> highest(1,3,4)
'p3'
>>> highest(67,23,1)
'p1'
>>> 
>>> def highest(x,y):
	if (x>y):
		print("max")
	else:
		print("min")

>>> highest(3,5)
min
>>> highest(5,3)
max
>>> 
