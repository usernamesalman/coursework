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

 ## 4
 outer(0:4,0:4,"+")
 ## 5 a
 outer(0:4,0:4,"+")%%5
 
 ##5 b 
 
 outer(0:9,0:9,"+")%%10
## 5 c
 outer(0:8,0:8,"-")%%9
## 6
 yVec <- c(7,-1,-3,5,17)
 x <- matrix(0,nrow=5, ncol=5)
 x1 <- abs(col(x)-row(x))+1
 
 
 ## a
 set.seed(75)
 aMat<-matrix(sample(10,size=60,replace=T),nrow=6)
 ##aMat[which(nrow(aMat)>4)]
  apply(aMat, 1, function(x){(x>4)})
  apply(aMat, 1, function(x){sum(x>4)})
 ## b 
  which( apply(aMat,1,function(x){(x==7)==2}) )
  
  
 ## 8 a
  
  sum( (1:20)^4 ) * sum( 1/(4:8) ) 
  
  ## 8 b
  sum( (1:20)^4 ) * sum( 1/(4:103) ) 
  sum( (1:20)^4 / (3 + outer(1:20,1:5,"*")))
  sum( (1:10)^4 / (3 + outer(1:10,1:4,"*")))
  
  