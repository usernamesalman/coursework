## exercise on matrices

## 1. a
 a<- c(1,1,3,5,2,6,-2,-1,-3)
 mat<-matrix(a,nrow=3,byrow=T)

## 1 b
 b<-mat%%mat%%mat
 

 mat[,3] <- mat[,2]+mat[,3] ## sum of 2nd and 3rd col=1st col
 mat
## 2
 two<- matrix(c(10,-10,10), ncol=3, nrow=15,byrow = T)
## b
 
 t(two)%*%two

 
 ## 3
 matE <- matrix(0,nrow=6,ncol  =6)

matE[ abs(col(matE)-row(matE))==1 ]<-1
 matE

 matrix(c(0:8),nrow=5,ncol=5)




4. 
5. (a) outer(0:4,0:4,"+")%%5
(b) outer(0:9,0:9,"+")%%10
(c) outer(0:8,0:8,"-")%%9
Other solutions are possible: for example matrix(0:4+rep(0:4,times=rep(5,5)),nc=5) also solves
part (a).
