


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

###
##24/june/2015

x <- c(1 + (0+0i), 2 + (0+4i))

series <- 1:10
sq<-seq(10)
class(series)
class(sq)

length(1:10)

xx <- c(1.7, "a")
xx <- c(TRUE, 2)
xx <- c("a", TRUE)

x <- 1:3
names(x) <- c("karthik", "ram", "rocks")
x

x <- as.list(1:10)
names(x) <- letters[seq(along = x)]
x


m <- matrix(1:4, nrow = 2)
m <- matrix(1:4, ncol = 2)

dimnames(m) <- list(c("a", "b"), c("c", "d"))

a <- matrix(1:9, nrow = 3)
colnames(a) <- c("A", "B", "C")
a[1:2, ]

#df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
#df[df$x == 2, ]

## control structures
## if
x <- 1:15
if (sample(x, 1) <= 10) {
  print("x is less than 10")
} else {
  print("x is greater than 10")
}

x<- 3
if(x<10){ 
  print("yes")
}else{
  print("no")
}

## Vectorization with ifelse
x<-3
ifelse(x <= 10, "x less than 10", "x greater than 10")

## Other valid ways of writing if/else

x<-3
if (x < 10) {
  y <- 5
} else {
  z <- 0
}


# for
for (i in 1:10) {
  print(i)
}



x <- c("apples", "oranges", "bananas", "strawberries")

for (i in length(x)) {
  print(x[i]) ##"strawberries"
}

for (i in 1:length(x)) {
  print(x[i])##"apples", "oranges", "bananas", "strawberries"
}

for (i in 1:4) {
  print(x[i])##"apples", "oranges", "bananas", "strawberries"
}


for (i in seq(x)) {
  print(x[i])##"apples", "oranges", "bananas", "strawberries"
}

for (i in 1:4) print(x[i]) ##"apples", "oranges", "bananas", "strawberries"

##Nested loops

m <- matrix(1:10, 2)
for (i in seq(nrow(m))) {
  for (j in seq(ncol(m))) {
    print(m[i, j])
  }
}

##While

i <- 1
while (i < 10) {
  print(i)
  i <- i + 1
}

##Example of repeat loop

x <- 1
repeat {
  x = x+1
  print(x)
  if (x == 6){
    break
  }
}

##

x <- 1
repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}

## next

for (i in 1:20) {
  if (i%%2 == 1) {
    next
  } else {
    print(i)
  }
}

for (i in 1:20) {
  if (i%%2 == 0) {
    next
  } else {
    print(i)
  }
}

which.min(c(2,5,1,7,8))
which.max(c(2,5,1,1,8))


## merging in R

x<-BOD
x

mode(x)
data.matrix(x)
mode(data.matrix(x))
