
####
x<-matrix(0,nrow=3,ncol=4)
print(x)
y <- matrix(1:12, nrow = 3, ncol = 4)
print(y)
y[1,3]
y[,2] # all the elements from the second column

x<-1:15
dim(x)<-c(3,5)
x

class(x) ## matrix

z <- x[1:2, 3:4] # from 1st row select 3rd and 4rth element
# from 2nd row select 3rd and 4rth element

class(z) ## matrix

x[1, 3] <- 1 ## replacing 3rd element with 1 in first row
x

x[,1]<-c(-1,-2,-3)
x

x[, 4]<-2 ## all values becomes 2 in 4rth column
x

x>0
x[x>0] 

x[1,1]<-NA
x
is.na(x)

x[is.na(x)]<-0
x

v<- apply(x, 1, mean) ## 1 means row
v<- apply(x, 2, min) ## 2 means col

gender=c("M","M","F")
ht<-c(120,130,140)
wt<-c(63,76,54)

df<-data.frame(gender,ht,wt)
class(df)
df[1,2]
names(df)
rownames(df)<-c("a","b","c")
df
df$ht ## will give height values

## Components can be added to a data frame in the natural way.
df$age <- c(28, 55, 43)
df

rbind(df,df,df)
cbind(rbind(df,df,df),rbind(df,df,df))

rnorm(5) ##we can generate 5 standard normal random numbers
x<-rnorm(10)
mean(x)
sd(x)
hist(x)

x <- 10
f1 <- function(x) {
  
  x + 10
}

f1(222)


f <- function(x) x^2

f <- function(x) {
  x^2}

f<-function(x,y){
  x+y
}

f(2,3)

f<-function(x,y){
  c(x:y)
}

f(1,20)

f<-function(x,y,z){
  seq(x,y,z)
}

f(1,20,3)



for (i in c(1:20)){
  print("funny")
}


for (i in c(1:20)){
  
}
print("funny")

x=2
if (x==2) {
  y=x+1
  print(y)
}

x=2
if (x<10) {
  y=x+1
  print(y)
}

x <- 5
if(x > 0){
  print("Positive number")
}


x<-2
if (x<0) {
  print("hi")
} else {
  print("bye")
}


x <- 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")


#First example:
x=c(1,2)
t=for(i in 1:length(x)){
  if (x==1){a=x+1}else
    if (x==2){a=x}
}





## scoping rules in R

lm<-function(x){x*x}
lm
function(x) {x*x}

lm(2)

search()

f<-function(x,y) {
  x^2+y/z
}



a=1
b=2
f<-function(a,b)
{
  return( function(x) {
    a*x + b
  })
}
g=f(2,1)
g(2)


make.power <- function(n) {
  pow <- function(x) {
    x^n 
  }
  pow 
}

cube <- make.power(3)
cube(3)

square <- make.power(2)
square(3)

ls(environment(cube))
ls(environment(square))

get("n", environment(square))


y <- 10

f <- function(x) {
  y <- 2
  y^2 + g(x)
}

g <- function(x) { 
  x*y
}

##R Code: Types of variables in functions


f <- function(x) {
  y <- 2*x
  print(x) # formal parameter
  print(y) # local variable
  print(z) # free variable
}

##
##R Code: Variable scoping examples
## example 1
a <- 10
x<- 5
f <- function (x) {
  x + a
}
f(2)

# example 2
f<- function (x) {
  a<-5
  
}

g <- function(y) {
  y + a
}
g(2)

## if else
x <- 1:15
if (sample(x, 1) <= 10) {
  print("x is less than 10")
} else {
  print("x is greater than 10")
}


## for

x <- c("apples", "oranges", "bananas", "strawberries")

for (i in x[1]) {
  print(x)
}

##
x <- c("apples", "oranges", "bananas", "strawberries")

for (i in x) {
  print(x[i])
}

for (i in 1:4) {
  print(x[i])
}

for (i in seq(x)) {
  print(x[i])
}

for (i in 1:4) print(x[i])

##
for (i in 1:20) {
  if (i%%2 == 1) {
    next
  } else {
    print(i)
  }
}

x <- 2
g <- function() {
  y <- c(3,4,5,6,7,8)
  c(x, y)
}
g()

##

first <- function(x, y) {
  z <- x + y
  return(z)
}

##
x <- vector()
# with a length and type
vector("character", length = 10)