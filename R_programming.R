##Basic R commands
library()
library(utils)
## to install the pakage
install.packages("lda")


args
args(remove.packages)
## To remove the pakage
remove.packages("RCurl","C:/Program Files/R/R-3.2.0/library")
#Input & Output
x<-1

print(x)

#x --- Auto printing
 #wrong way of assigning
msg <- "hello"
#correct way of assigning
msg<-c("hello")
# - comment
 #printing the seq from 1 to 20
X<-1:20

##mathamatical cal
a<-sqrt(16)
a1<-16^0.5
##Compute 4 power 3
a3<-4^3

b1<-log10(1000)
b2<-log(1000)
b3<-exp(log(1000))
b4<-log2(64)

##to find the pi value
## built-in constants defined 
## in R along with their values

pi 
##to remove the decimal value
c2<-round(pi)
##to place 4 decimal value
c3<-round(pi, digits=4)
c4<-trunc(pi)## same as c2



##Vectors - Exercise
x <- c(3,6,8)

x
## class cmd is used to check the data types
class(x)
x/2

x^2

sqrt(x)
## [] bracket is extract the element
x[2]## second element will be extracted

x[c(1,3)]## 1st and 3rd element will be extracted

x[-3]## drop the 3rd element fron the vector

y <- c(2,5,1)## creating the vector & stored in variable y

y
## if two vector are of same length we can do various mathamatical 
##calculatuion....

x-y

x*y

x[y>1.5]

y[x==6]

4:10

seq(2,3,by=0.1)
x<-1
rep(x,each=4)



d1<-0/1
d1
d2<-1/0
d2 ## infinity
d3<-Inf/2
d3
d4<-2/Inf
d4
 
## Different types of vector

x1<-c(0.5,0.6)
class(x1) ## "numeric"
x2<-c(TRUE,FALSE) 
class(x2) ## "logical"
x3<-c(T,F)
class(x3)## "logical"
x4<-c("a","b","c")
class(x4) ## "character"
x5<-9:29
x5
class(x5)##"integer"
x6<-c(1+i,2+2i)
x6
class(x6) ## "complex"
y1<-c(1.7,"a")
y1
class(y1) ## "character"
y2<-c(TRUE,20)
y2
class(y2) ## "numeric"
y3<-c("a",TRUE)
y3
class(y3) ## "character"

## Explicit typecasting
x<-0:6
class(x) ## "integer"

x1<-as.numeric(x)
class(x1) ## "numeric"
x2<-as.character(x)
x2
class(x2) ## "character"
x3<-as.logical(x)
x3
class(x3) ## "logical"
x4<-as.complex(x)
x4
class(x4) ## "complex"'

 ## List is special type vector with elements 
 ## of different datatypes

x <- list(123,"abcd",FALSE,13+4i,"1223aa")
class(x) "list"

## Matrix is special vector with dimension attribute
m <- matrix(nrow=3,ncol=2) ## 3X2
dim(m) ## 3 rows and 2 columns
attributes(m)

m<- 1:6
m
dim(m) <-c(3,2) ## - creating vector by 
## adding dimension attribute
m

a<- 1:5

b<- 12:16

cbind(a,b)

rbind(a,b)


## second day

x<-factor(c("yes","no","yes","no","yes"))

x ## levels yes and no are coming as ascending order as
## default output

table(x) ## total frequency/occurance of yes and no
class(x) ## "factor"

unclass(x) ##- strips out the class

## Setting the specific baseline

x<-factor(c("yes","no","yes","no","yes"), level = c("yes","no"))

## Missing Values

x<-c(1,6,NA,3,2)

is.na(x) ## TRUE represents na

is.nan(x) ## FALSE represents there is no nan

x<-c(1,6,NA,NaN,2)

is.na(x) ## only for seeing na na nan
is.nan(x) # only for seeing nan




mat<-data.matrix(x)
class(mat)
## dataframe
x<-data.frame(y=1:4,z=c(F,T,T,F))
x
nrow(x) ## number of rows
ncol(x) ## number of columns

## another example for data frame
n = c(2, 3, 5) 
s = c("aa", "bb", "cc") 
b = c(TRUE, FALSE, TRUE) 
df = data.frame(n, s, b)
class(df) ## "data.frame"
df_mat<-data.matrix(df)
class(df_mat) ## "matrix"

## Names Attributes
X<-1:3
X
names(X)=c("Age","wt","ht")
X
names(X)


read.csv(file="C:/Documents and Settings/Administrator/Desktop/task.csv")


read.table("C:/Documents and Settings/Administrator/Desktop/LungCapData.csv", header=T)
x<-read.table("C:/Documents and Settings/Administrator/Desktop/LungCapData.csv", header=T,sep=",")

## dump() creates a file in a format that can be read with the source()

dump("x",file="x.R")
source(file="x.R")
getwd()

dput(x, file = "",
     control = c("keepNA", "keepInteger", "showAttributes"))
dget(file)



##

data()
