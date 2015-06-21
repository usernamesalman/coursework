Python 2.7.10 (default, May 23 2015, 09:40:32) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> ## variables and input
>>> my_var=30
>>> value=input("enter the value:")
enter the value:40
>>> value
40
>>> value+40
80
>>> value=int(input("enter the value:"))
enter the value:40
>>> value
40
>>> 2**3
8
>>> 2 prod 3
SyntaxError: invalid syntax
>>> pow(2,3)
8
>>> ## bulit in funct are:
>>> dir(__builtins)

Traceback (most recent call last):
  File "<pyshell#11>", line 1, in <module>
    dir(__builtins)
NameError: name '__builtins' is not defined
>>> dir(__builtins__)
['ArithmeticError', 'AssertionError', 'AttributeError', 'BaseException', 'BufferError', 'BytesWarning', 'DeprecationWarning', 'EOFError', 'Ellipsis', 'EnvironmentError', 'Exception', 'False', 'FloatingPointError', 'FutureWarning', 'GeneratorExit', 'IOError', 'ImportError', 'ImportWarning', 'IndentationError', 'IndexError', 'KeyError', 'KeyboardInterrupt', 'LookupError', 'MemoryError', 'NameError', 'None', 'NotImplemented', 'NotImplementedError', 'OSError', 'OverflowError', 'PendingDeprecationWarning', 'ReferenceError', 'RuntimeError', 'RuntimeWarning', 'StandardError', 'StopIteration', 'SyntaxError', 'SyntaxWarning', 'SystemError', 'SystemExit', 'TabError', 'True', 'TypeError', 'UnboundLocalError', 'UnicodeDecodeError', 'UnicodeEncodeError', 'UnicodeError', 'UnicodeTranslateError', 'UnicodeWarning', 'UserWarning', 'ValueError', 'Warning', 'WindowsError', 'ZeroDivisionError', '_', '__debug__', '__doc__', '__import__', '__name__', '__package__', 'abs', 'all', 'any', 'apply', 'basestring', 'bin', 'bool', 'buffer', 'bytearray', 'bytes', 'callable', 'chr', 'classmethod', 'cmp', 'coerce', 'compile', 'complex', 'copyright', 'credits', 'delattr', 'dict', 'dir', 'divmod', 'enumerate', 'eval', 'execfile', 'exit', 'file', 'filter', 'float', 'format', 'frozenset', 'getattr', 'globals', 'hasattr', 'hash', 'help', 'hex', 'id', 'input', 'int', 'intern', 'isinstance', 'issubclass', 'iter', 'len', 'license', 'list', 'locals', 'long', 'map', 'max', 'memoryview', 'min', 'next', 'object', 'oct', 'open', 'ord', 'pow', 'print', 'property', 'quit', 'range', 'raw_input', 'reduce', 'reload', 'repr', 'reversed', 'round', 'set', 'setattr', 'slice', 'sorted', 'staticmethod', 'str', 'sum', 'super', 'tuple', 'type', 'unichr', 'unicode', 'vars', 'xrange', 'zip']
>>> help(max)
Help on built-in function max in module __builtin__:

max(...)
    max(iterable[, key=func]) -> value
    max(a, b, c, ...[, key=func]) -> value
    
    With a single iterable argument, return its largest item.
    With two or more arguments, return the largest argument.

>>> help(import)
SyntaxError: invalid syntax
>>> help(__import__)
Help on built-in function __import__ in module __builtin__:

__import__(...)
    __import__(name, globals={}, locals={}, fromlist=[], level=-1) -> module
    
    Import a module. Because this function is meant for use by the Python
    interpreter and not for general use it is better to use
    importlib.import_module() to programmatically import a module.
    
    The globals argument is only used to determine the context;
    they are not modified.  The locals argument is unused.  The fromlist
    should be a list of names to emulate ``from name import ...'', or an
    empty list to emulate ``import name''.
    When importing a module from a package, note that __import__('A.B', ...)
    returns package A when fromlist is empty, but its submodule B when
    fromlist is not empty.  Level is used to determine whether to perform 
    absolute or relative imports.  -1 is the original strategy of attempting
    both absolute and relative imports, 0 is absolute, a positive number
    is the number of parent directories to search relative to the current module.

>>> import math
>>> math.sqrt
<built-in function sqrt>
>>> ================================ RESTART ================================
>>> 
number1
number2
number4
4
>>> ================================ RESTART ================================
>>> 
number1
number2
number34
34
the max of three numbers :
34
>>> ================================ RESTART ================================
>>> 
name
age
class
>>> ================================ RESTART ================================
>>> 
name don't
age don't
class
>>> a="hello"
>>> print(a*5)
hellohellohellohellohello
>>> ================================ RESTART ================================
>>> 
[1, 2, 'a', 'aa1212as']
>>> ================================ RESTART ================================
>>> 
[1, 2, 'a', 'aa1212as']
>>> ================================ RESTART ================================
>>> 
[1, 2, 'a', 'aa12', '12as']
>>> ================================ RESTART ================================
>>> 
['sal', 'man']
>>> names[1]
'man'
>>> ================================ RESTART ================================
>>> 
['sal', 'man']
['sal', 'man', 'ash']
>>> ================================ RESTART ================================
>>> 

Traceback (most recent call last):
  File "D:/salman/python_test.py", line 3, in <module>
    names.extend(age)
NameError: name 'names' is not defined
>>> ================================ RESTART ================================
>>> 

Traceback (most recent call last):
  File "D:/salman/python_test.py", line 3, in <module>
    names.extend(age)
NameError: name 'names' is not defined
>>> age=[12,23,4]
>>> names.extend(age)

Traceback (most recent call last):
  File "<pyshell#22>", line 1, in <module>
    names.extend(age)
NameError: name 'names' is not defined
>>> ================================ RESTART ================================
>>> 

Traceback (most recent call last):
  File "D:/salman/python_test.py", line 3, in <module>
    names.extend(age)
NameError: name 'names' is not defined
>>> ================================ RESTART ================================
>>> 
>>> ================================ RESTART ================================
>>> 
>>> mylist=[0,1,2,3,4,5,6,7,8,9]
>>> mylist
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> mylist[4]
4
>>> mylist[4:8]
[4, 5, 6, 7]
>>> names=['a','b','c','d']
>>> names[2:3]
['c']
>>> mylist[:]
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> mylist[-4:-4]
[]

>>> str=salman

Traceback (most recent call last):
  File "<pyshell#31>", line 1, in <module>
    str=salman
NameError: name 'salman' is not defined
>>> str="salman"
>>> str[-2:]
'an'
>>> str[-2:-1]
'a'
>>> str[-2]
'a'
>>> str[-1: ]
'n'
>>> str[5:5]
''
>>> str[5:6]
'n'
>>> ================================ RESTART ================================
>>> 
number? -3
('the abs value', -3, 'is', 3)
>>> ================================ RESTART ================================
>>> 
number? -3
the abs value
>>> 3
3
>>> ================================ RESTART ================================
>>> 
number? -2
the abs value
>>> ================================ RESTART ================================
>>> 
number? -2
('the abs value', -2)
>>> ================================ RESTART ================================
>>> 
number? -6
('the abs value', -6, 'is', 6)
>>> ================================ RESTART ================================
>>> 
number? 7
('the abs value', -7, 'is', 7)
>>> ================================ RESTART ================================
>>> 
number? 8
('the abs value', -8, 'is', 8)
>>> ================================ RESTART ================================
>>> 
exp<200
which is 100
bye bye
>>> ================================ RESTART ================================
>>> 
exp<200
which is 100
bye bye
>>> ================================ RESTART ================================
>>> 
>>> ================================ RESTART ================================
>>> 
input a no :-20
khnhbjs
>>> ================================ RESTART ================================
>>> 
input a no :12
postive no>30
>>> ================================ RESTART ================================
>>> 
>>> letterGrade(score)

Traceback (most recent call last):
  File "<pyshell#40>", line 1, in <module>
    letterGrade(score)
NameError: name 'score' is not defined
>>> letterGrade()

Traceback (most recent call last):
  File "<pyshell#41>", line 1, in <module>
    letterGrade()
TypeError: letterGrade() takes exactly 1 argument (0 given)
>>> print ("Hello ji")
Hello ji
>>> def myfun(name):
	print("salman",name)

	
>>> hello("ash")

Traceback (most recent call last):
  File "<pyshell#46>", line 1, in <module>
    hello("ash")
NameError: name 'hello' is not defined
>>> myfun("ji")
('salman', 'ji')
>>> myfun ("khhnskhnws")
('salman', 'khhnskhnws')
>>> def add(x,y):
	return(x+y)

>>> add(23,4)
27
>>> 
