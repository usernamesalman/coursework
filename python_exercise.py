Python 2.7.10 (default, May 23 2015, 09:40:32) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> print "Hello World !"
Hello World !
>>> x=1
>>> if x==1
SyntaxError: invalid syntax
>>> if x==1:
	#indented four spaces
	print "x is 1."

	
x is 1.

>>> x=1
>>> if x==1:
	print "yes"

	
yes
>>> myint=7
>>> myfloat=7.0
>>> myfloat=float(7)
>>> ## strings
>>> mystring='Hello'
>>> mystring="Hello"
>>> mystring="my name is salman"
>>> one=1
>>> two=2
>>> three=one+two
>>> three
3
>>> mystring
'my name is salman'
>>> hello="hello"
>>> world="world"
>>> helloworld=hello+" "+world
>>> helloworld
'hello world'
>>> ## Assignments can be done on more than one variable "simultaneously"
>>> a,b=3,4
>>> a,b
(3, 4)
>>> ## this will not work
>>> print one+ two+three
6
>>> print one+two+hello

Traceback (most recent call last):
  File "<pyshell#32>", line 1, in <module>
    print one+two+hello
TypeError: unsupported operand type(s) for +: 'int' and 'str'
>>> mylist=[]
>>> mylist
[]
>>> mylist.append(1)
>>> mylist.append(2)
>>> mylist.append(3)
>>> print(mylist[0]) # prints 1
1
>>> print(mylist[2]) # prints 1
3
>>> print(mylist[1]) # prints 1
2
>>> for x in mylist:
	print x

	
1
2
3
>>> mylist=[1,2,3]
>>> mylist
[1, 2, 3]
>>> print(mylist[10])

Traceback (most recent call last):
  File "<pyshell#46>", line 1, in <module>
    print(mylist[10])
IndexError: list index out of range
>>> print(mylist[1])
2
>>> ## basic operators
>>> number=1+2/34*5
>>> number
1
>>> remainder=11%3
>>> remainder
2
>>> squared = 7 ** 2
>>> squqred

Traceback (most recent call last):
  File "<pyshell#54>", line 1, in <module>
    squqred
NameError: name 'squqred' is not defined
>>> squared
49
>>> cubed = 2 ** 3
>>> cubed
8
>>> helloworld = "hello" + " " + "world"
>>> helloworld
'hello world'
>>> lotsofhellos = "hello" * 10
>>> lotsofhellos
'hellohellohellohellohellohellohellohellohellohello'
>>> even_numbers = [2,4,6,8]
>>> odd_numbers = [1,3,5,7]
>>> all_numbers = odd_numbers + even_numbers
>>> all_numbers
[1, 3, 5, 7, 2, 4, 6, 8]
>>> print [1,2,3] * 3
[1, 2, 3, 1, 2, 3, 1, 2, 3]
>>> ## String Formatting
>>> name = "John"
>>> print "Hello, %s!" % name
Hello, John!
>>> # This prints out "John is 23 years old."
>>> name = "John"
>>> age = 23
>>> print "%s is %d years old." % (name, age)
John is 23 years old.
>>> # This prints out: A list: [1, 2, 3]
>>> mylist = [1,2,3]
>>> print "A list: %s" % mylist
A list: [1, 2, 3]
>>> ##%s - String (or any object with a string representation, like numbers)
>>> ##%d - Integers
>>> ##%.<number of digits>f - Floating point numbers with a fixed amount of digits to the right of the dot.
>>> ##%x/%X - Integers in hex representation (lowercase/uppercase)
>>> ##Basic String Operations
>>> #Strings are bits of text. They can be defined as anything between quotes:
>>> print len(astring)

Traceback (most recent call last):
  File "<pyshell#83>", line 1, in <module>
    print len(astring)
NameError: name 'astring' is not defined
>>> astring = "Hello world!"
>>> print len(astring)
12
>>> 
KeyboardInterrupt
>>> print astring.index("o")
4
>>> print astring.index("r")
8
>>> print astring.count("l")
3
>>> print astring[3:7]
lo w
>>> print astring.upper()
HELLO WORLD!
>>> print astring.lower()
hello world!
>>> print astring.startswith("Hello")
True
>>> print astring.endswith("asdfasdfasdf")
False
>>> afewwords = astring.split(" ")
>>> afewwords
['Hello', 'world!']
>>> ## Conditions
>>> x=2
>>> print x==2
True
>>> print x==3
False
>>> print x<3
True
>>> ##Boolean operators
>>> 
>>> name = "John"
>>> age=23
>>> if name=="John" or age==23:
	print "my name is john and my age 23"

	
my name is john and my age 23
>>> if name =="John" or name=="Rick":
	 print "my name is either john or rick"

	 
my name is either john or rick
>>> ##The "in" operator
>>> if name in ["John", "Rick"]:
	print "my name is either john or rick"

	
my name is either john or rick
>>> ## if and else
>>> x=2
>>> if x==2:
	print "yes"
	else:
		
SyntaxError: invalid syntax
>>> x=2
>>> if x==2:
	print "yes"

	
yes
>>> else:
	
SyntaxError: invalid syntax
>>> else:
	
SyntaxError: invalid syntax
>>> if x=2
SyntaxError: invalid syntax
>>> x=2
>>> if x==2:
	print "yes"
else:
	print "no"

	
yes
>>> ##The 'is' operator
>>> x = [1,2,3]
>>> y = [1,2,3]
>>> print x == y # Prints out True
True
>>> print x is y # Prints out False
False
>>> ##The "not" operator
>>> 
