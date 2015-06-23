# Fibonacci series:
# the sum of two elements defines the next
a, b = 0, 1
while b < 200:
       print b,
       a, b = b, a+b

# input and operator if

x = int(raw_input("Please enter an integer: "))

if x < 0:
      x = 0
      print 'Negative changed to zero'
elif x == 0:
      print 'Zero'
elif x == 1:
      print 'Single'
else:
      print 'More'

# operator for:

# Measure some strings:
a = ['cat', 'window', 'defenestrate']
for x in a:
    print x, len(x)


# range function
print range(10)

print range(5, 10)

print range(0, 10, 3)

a = ['Mary', 'had', 'a', 'little', 'lamb']
for i in range(len(a)):
    print i, a[i]

# break operator
# prime numbers

for n in range(2, 20):
    for x in range(2, n):
        if n % x == 0:
            print n, 'equals', x, '*', n/x
            break
    else:
        # loop fell through without finding a factor
        print n, 'is a prime number'

# work with strings

# Strings can be concatenated (glued together) with the + operator, and repeated with *: 
word = 'Help' + 'A'
print word


a=2+3j
b=2-3j

print a*a
print a*b

print a.real
print b.imag

# work with lists

a = ['spam', 'eggs', 100, 1234]
print " list a=",a

# list indices start at 0, 
print 'a[0]=', a[0]

print 'a[3]=', a[3]
print 'a[-2]=', a[-2]

# lists can be sliced, concatenated and so on: 
print  "a[1:-1]=", a[1:-1]

print a[:2] + ['bacon', 2*2]

print 3*a[:3] + ['Boe!']

# possible to change individual elements of a list: 

a[2] = a[2] + 23
print "changing a[2]=", a

#Assignment to slices is also possible, and this can even change the size of the list: 

# Replace some items:
a[0:2] = [1, 12]
print a

# Insert some:
a[1:1] = ['bletch', 'xyzzy']
print a

a[:0] = a     # Insert (a copy of) itself at the beginning
print a

print "length=", len(a)


# more work with lists

a = [66.6, 333, 333, 1, 1234.5]

print a.count(333), a.count(66.6), a.count('x')

a.insert(2, -1)
print a

a.append(333)
print a

print a.index(333)

a.remove(333)
print a

a.reverse()
print a

a.sort()
print a


# Using Lists as Stacks

stack = [3, 4, 5]
stack.append(6)
stack.append(7)
print stack

x=stack.pop()
print "popped ",x
print stack

x=stack.pop()
print "popped ",x
x=stack.pop()
print "popped ",x
print stack


# Using Lists as Queues

queue = ["Eric", "John", "Michael"]
queue.append("Terry")           # Terry arrives
queue.append("Graham")          # Graham arrives
print queue

s=queue.pop(0)
print s

s=queue.pop(0)
print s

print queue

# The del statement
a = [-1, 1, 66.6, 333, 333, 1234.5]
del a[0]
print a

del a[2:4]
print a

def add(x,y):
    return x+y
r=reduce(add, range(1, 11))
print r # 55


# A tuple consists of a number of values separated by commas

t = 12345, 54321, 'hello!' # tuple packing
print t[0]

print t
(12345, 54321, 'hello!')

# Tuples may be nested:
u = t, (1, 2, 3, 4, 5)
print u     #  ((12345, 54321, 'hello!'), (1, 2, 3, 4, 5))

