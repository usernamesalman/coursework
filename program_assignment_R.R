## Exercise 1 Vectors

##1
a<-c(1:20)
b<-c(20:1)
c<-c(1:20,19:1)
tnp<-c(4,6,3)
e<-rep(c(4,6,3),times=10)
e<-rep(c(4,6,3),length=31)
f<-rep(c(4,6,3),times=c(10,20,30))

##2

x <- seq(3,6,by=0.1)
##?exp
##exp(x)
exp(x)*cos(x)

##3
# s
a<-(0.1^seq(3,36,by=3))*(0.2^seq(1,34,by=3))
## 2x1,2x2,2x3,...2x25
## common is 2

b<-(2^(1:25))/(1:25)



##4. a

sum_seq <- 10:100
a<-sum(sum_seq^3+4*sum_seq^2)
a

## or

sm=0
for (i in c(10:100)){
  a<-(i^3+4*i^2)
  sm=sm+a
}


##4 b.

a <- 1:25
sum((2^a)/a + 3^a/(a^2))

## 5. a
d<-c(1:30)
 l1<-paste("label", d)
 l1
## 5 b 
 l2<-paste("fn", d,sep="")
 l2

 
 
 ## 6
 xVec <- sample(0:999, 250, replace=T)
 yVec <- sample(0:999, 250, replace=T)
 
 
##yVec-xVec
 ## a
yVec[c(2:250)] - xVec[c(1:249)]

 ## b
sin(yVec[c(1:249)]) / cos(xVec[c(2:250)])

## c
xVec[-c(249,250)] + 2*xVec[-c(1,250)]-xVec[-c(1,2)]

## another way of doing c
xVec[c(1:248)] + 2*xVec[c(2:249)]-xVec[c(3:250)]

## d
sum(exp(xVec[c(2:250)])/(xVec[c(1:249)]+10))

## 7 a
## values
yVec[which(yVec>600)]

## 7 b
## index position
which(yVec>600)
 ## 7c
xVec[yVec>600] 
 ## 7d
 sqrt(abs(xVec-mean(xVec)))
 ## 7e
 sum( yVec>max(yVec)-200) 
 
 ## f
 sum(xVec%%2==0)
      
  ## 7g
 xVec[order(yVec)]
 
 
 yVec[order(yVec)]
   ## 7h   
 yVec[seq(1,250,3)] 
 
 ##8
 (1+sum(cumprod(seq(2,38,b=2)/seq(3,39,b=2)))

 
      
