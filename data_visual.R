## Data Visualization

library(RColorBrewer)
data(VADeaths)
par(mfrow=c(2,3))
hist(VADeaths,breaks=10, col=brewer.pal(3,"Set3"),main="Set3 3 colors")
hist(VADeaths,breaks=3 ,col=brewer.pal(3,"Set2"),main="Set2 3 colors")
hist(VADeaths,breaks=7, col=brewer.pal(3,"Set1"),main="Set1 3 colors")
hist(VADeaths,breaks= 2, col=brewer.pal(8,"Set3"),main="Set3 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greys"),main="Greys 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greens"),main="Greens 8 colors")
# line chart
plot(AirPassengers,type="l")  #Simple Line Plot
#bar chart
str(iris)
head(iris)
barplot(iris$Petal.Length) #Creating simple Bar Graph
barplot(iris$Sepal.Length,col  = brewer.pal(3,"Set1"),xlab="freq",ylab="sepal length")
barplot(table(iris$Species,iris$Sepal.Length),col  = brewer.pal(3,"Set1")) #Stacked Plot
##boxplot
boxplot(iris$Petal.Length~iris$Species) #Creating Box Plot between two variable


data(iris)
par(mfrow=c(2,2))
boxplot(iris$Sepal.Length,col="red")
boxplot(iris$Sepal.Length~iris$Species,col="red")
boxplot(iris$Sepal.Length~iris$Species,col=heat.colors(3))
boxplot(iris$Sepal.Length~iris$Species,col=topo.colors(3))

plot(x=iris$Petal.Length) #Simple Scatter Plot
plot(x=iris$Petal.Length,y=iris$Species) #Multivariate Scatter Plot
plot(iris,col=brewer.pal(3,"Set1"))
head(iris)
pie(table(iris$Species),main="pie chart")

table(airquality$Ozone)
hist(airquality$Ozone,breaks=20,main="Histogram for Ozone",las=1,xlab="Ozone",ylab="freq of Ozone on each day")


####
## Data analaysis
AirPassengers
USArrests
str(USArrests)
dim(USArrests)
names(USArrests)
hist(USArrests$Murder,breaks=10,main="HIstogram on US Arrests Murders")
pie(head(USArrests$Murder),labels =row.names(head(USArrests)))
summary(USArrests)
count<-table(USArrests$Murder)
barplot(USArrests$Murder,ylab="Rate of Murders",las=1,xlab="Number of Resident",main="Histograms on  Violent Crime Rates by US State",ylim=c(0,20),xlim=c(0,100))
barplot(USArrests$Murder,ylab="Rate of Murders",las=1,xlab="Number of Resident",main="Histograms on  Violent Crime Rates by US State",ylim=c(0,30),xlim <- range(USArrests$Murder))

str(USArrests)
apply(USArrests,2,mean)## apply on data frame


apply(USArrests[1],2,mean)## means on first column(murder)
apply(USArrests[1:3],2,mean)## means on first three column
apply(USArrests[3],2,mean)## means on third column(UrbanPop)
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", horiz=TRUE,
        names.arg=c("3 Gears", "4 Gears", "5 Gears"))
##Rough work
1:10
cumsum(1:10)#1,1+2=3,3+3=6,6+4=10.......
cumprod(1:10)#1,1*2=2,2*3=6,6*4=24,24*5=120,.......
cummin(c(3:1, 2:0, 4:2))  ## ask
cummax(c(3:1, 2:0, 4:2)) ## ask

## outer functions in R
x <- c(1,2.3,2,3,4,8,12,43)
y<- c(2,4)
##outer()==function applies a function to two arrays
outer(x,y,"+")
outer(x,y,"*")
