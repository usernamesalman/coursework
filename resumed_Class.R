X <-c("a", "b", "c", "d", "e")
X

X[1]
X[2]
X[1:4]
X[X>"a"]
U<- X> "a"
X[U]


##
X <- list(abcd =1:4,cde =0.1, ba="tell me")

X[1] # gets list

X[[1]] #- only sequence of data

X$abcd

X[["cde"]]

X["cde"]

X[c(1,3)]

nm<-"abcd"

X[nm]

X$nm #------ gives an error why ? 

X <-list(a=list(11,12,2,3), b=c(111,222))
X[[c(1,3)]]
X[[1]][[3]]
X[[c(2,1)]]

##
X<-matrix(1:6,2,3)
X[1,2]
X[2,1]
class(X)
class(X[1,])
X[1,]
X[,2]  #---returns vector
class(X[,2])
X[1,2, drop=FALSE] #--- returns the matrix format
X[1, , drop=FALSE] 

##
X <-list(aad=1:5)
X$a # pattern matching

X[["a"]]
X [["a", exact=FALSE]]

X<-list(aad=1:5,addexx=11:14)
X$ad
X[["aa"]]
X [["aa", exact=FALSE]]

##
X <-c(1,2,32,NA,34,NA,NA)
ms<-is.na(X)
X[ms]
Y <-c("a","b","c",NA,"d",NA,NA)
vld<-complete.cases(X,Y)
X[vld]
Y[vld]
airquality[1:6,]
cleandt <-complete.cases(airquality)
airquality[cleandt, ][1:6,]

##
X<- 1:4 ; Y <- 6:9
X+Y
X> 2
X >=2
Y==8
X*Y
X/Y
X<-matrix(1:4,2,2); Y<-matrix(rep(10,4),2,2)
X*Y
X/Y
X %*% Y
getwd()
