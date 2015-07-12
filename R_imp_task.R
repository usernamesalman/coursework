
## addition using for loop
answer<-0
for (j in c(31,41,41)){
  answer<-j+answer
  
}
print(answer)



x<-matrix(c(1:9),nrow=3,ncol=3)

sn<-0
for (i in x){
  sn<-i+sn
}
print(sn)


sn2<-0
for(i in x[,3])
{
  sn2<-sn2+i
}
print(sn2)

sn2<-0
for(i in x[3, ])
{
  sn2<-sn2+i
}
print(sn2)






airquality

class(airquality)

sn<-0
for(i in airquality$Temp){
  sn<-sn+i
  
}
print(sn)



####
library(splines)
library(survival)
bladder


head(bladder)
bladder[100:105,]

bladder[,6]
survObject<-with(bladder[100:105, ],mean(stop+stop))


##extraction of values from the data frame
women

women[12,2] 
women[8,] ## extract 8th rows
women[1:5,] # rows 1 to 5, all columns
women[,2]   # all rows, column 2
women[c(1,3,7,13),]# rows 1, 3, 7, and 13, all columns
women[c(1,3,7,13),1]# rows 1, 3, 7, and 13, column 1
weight=scan()
with(women,mean(height))


## remove na values
## how to remove na values

x<-c(1,2,NA,4,NA,5)
bad<-is.na(x)
x[!bad]

x<-c(1,2,NA,4,NA,5)
y<-c("a","b","NA","d","NA","f")

good<-complete.cases(x,y)## same position hv NA values
good
x[good]
y[good]

airquality[1:6, ]
good<-complete.cases(airquality)
airquality[good, ][c(1:30), ]

########################
## speed test
start.time <- Sys.time()
set.seed(75)
aMat <- matrix( sample(10, size=60, replace=T), nr=6)
aMat
n<-ncol(aMat)
m<-nrow(aMat)

#7.a)

for(i in 1:m){
  k<-0
  for(j in 1:n){
    if(aMat[i,j]>4)
      k<-k+1
    
    
  }
  print( k)
}

end.time <- Sys.time()
time.taken1 <- end.time - start.time
time.taken1
###
start.time <- Sys.time()
set.seed(75)
aMat <- matrix( sample(10, size=60, replace=T), nr=6)

apply(aMat, 1, function(x){sum(x>4)})




end.time <- Sys.time()
time.taken1 <- end.time - start.time
time.taken1

########################

