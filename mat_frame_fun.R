


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