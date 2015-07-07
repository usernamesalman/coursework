x <- list(a = 1, b = 1:3, c = 10:100)
#Compare with above; a named vector, not a list 
sapply(x, FUN = length)
sapply(x, FUN = mean)
sapply(x, FUN = sum)

sapply(1:5,function(x) rnorm(3,x))
sapply(1:2,function(x) matrix(x,2,2), simplify = "array")
sapply(1:2,function(x) matrix(x,2,2), simplify = "list")
x <- list(a = 1, b = 1:3, c = 10:100)
vapply(x, FUN = length, FUN.VALUE = 0L)

#lapply
##lapply will always return a list
x <- 1:3
lapply(x, function(val){val * 2})
##sapply works just like lapply except that the result is in the form of vector instead of list.
x <- 1:3
sapply(x, function(val){val* 2})

#vapply works just like sapply except 
#that you need to specify the type of 
#return value (integer, double, characters).
#vapply is generally safer and faster than 
#sapply. Vapply can save some time in coercing 
#returned values to fit in a single atomic vector.

vapply(x, function(val){val * 2}, FUN.VALUE=double(1))

# create a matrix of 10 rows x 2 columns
m <- matrix(c(1:10, 11:20), nrow = 10, ncol = 2)
# mean of the rows
apply(m, 1, mean)
#[1]  6  7  8  9 10 11 12 13 14 15
# mean of the columns
apply(m, 2, mean)
#[1]  5.5 15.5
# divide all values by 2
apply(m, 1, function(x) x/2) # all rows divided by 2

apply(m, 1:2, function(x) x/2)## both rows and col divied by 2

# create a list with 2 elements
l <- list(a = 1:10, b = 11:20)
# the mean of the values in each element
lapply(l, mean)
#or
lapply(l,FUN= mean)

# the sum of the values in each element
lapply(l, sum)

#sapply
# create a list with 2 elements
l <- list(a = 1:10, b = 11:20)
# mean of values using sapply
l.mean <- sapply(l, mean)
# what type of object was returned?
class(l.mean)
#[1] "numeric"
# it's a numeric vector, so we can get element "a" like this
l.mean[['a']] ## only value will come
#[1] 5.5
l.mean['a']# both value and variable will come
names(l.mean)

## mapply
l1 <- list(a = c(1:10), b = c(11:20))
l2 <- list(c = c(21:30), d = c(31:40))
# sum the corresponding elements of l1 and l2
mapply(sum, l1$a, l1$b, l2$c, l2$d)

# let's start with our usual simple list example
l <- list(a = 1:10, b = 11:20)
# log2 of each value in the list
rapply(l, log2)
class(rapply(l, log2)) #numeric

# log2 of each value in each list
rapply(l, log2, how = "list")

# what if the function is the mean?
rapply(l, mean)
rapply(l, mean, how = "list")

attach(iris)
# mean petal length by species
tapply(iris$Petal.Length, Species, mean)

csv_R<-read.table(file="C:/Documents and Settings/Administrator/Desktop/Tomato First.csv",header=T,sep=",")
csv_R
head(csv_R)

csv_R<-read.table(file="C:/Documents and Settings/Administrator/Desktop/Tomato First.csv",header=T,sep=",",stringsAsFactors = FALSE)
class(csv_R$Tomato)


## graphs

require(ggplot2)
data(diamonds)
head(diamonds)

hist(diamonds$carat)
hist(diamonds$carat,main="Title")
hist(diamonds$carat,main="Title",xlab="carat")


library(XML)
theURL<-("http://www.loc.gov/rr/print/list/057_chron.html")
presidents<-readHTMLTable(theURL,which=3,as.data.frame=T,skip.rows=1,header = T,stringsAsFactors=F)
head(presidents)
tail(presidents)
presidents<-presidents[1:64, ]
library(stringr)
yearlist<-str_split(string=presidents$YEAR,pattern="-")

yearMatrix<-data.frame(Reduce(rbind,yearlist))
tail(presidents$YEAR)
names(yearMatrix)<-c("start","stop")
head(yearMatrix)
presidents<-cbind(presidents,yearMatrix)
tail(presidents)
head(presidents)

#get first 3 char of president
str_sub(string=presidents$PRESIDENT,start=1,end=3)
str_sub(string=presidents$PRESIDENT,start=1,end=8)
## year end with 1..1991..1971
presidents[str_sub(string=presidents$start,start=4,end=4)==1,c("YEAR","PRESIDENT","start","stop")]
## search for john
str_detect(presidents$PRESIDENT,"john")
#str_detect(presidents$PRESIDENT,ignore.case("john"))
str_detect(presidents$PRESIDENT,fixed("john", ignore_case = T))
library(utils)
view(presidents[str_detect(presidents$PRESIDENT,fixed("john", ignore_case = T))])

###
con<-url("http://jaredlander.com/data/warTimes.rdata")
load(con)
close(con)
head(warTimes,10)
tail(warTimes,10)
warTimes[str_detect(string=warTimes,pattern="-")]
theTimes<-str_split(string = warTimes,pattern ="(ACAEA)",n=2)