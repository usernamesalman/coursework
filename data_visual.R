library(ggplot2)
str(mpg)
names(mpg)
qplot(displ,hwy,data=mpg)
qplot(displ,hwy,data=mpg,color=drv)
qplot(displ,hwy,data=mpg,color=drv,geom=c("point","smooth"))
qplot(hwy,data=mpg,fill=drv) ## histogram
###
## barchart and pie chart
library(graphics)
library(ggplot2)
data<-read.table(file.choose(),header = T,sep=",")
attach(data)
dim(data)
names(data)
## barplot
## freq table for gender

data1<-head(data,20)
attach(data1)
count<-table (Gender)
pct<-table(Gender)/40
barplot(pct)
barplot(pct,main="TITLE")## adding title
barplot(pct,main="TITLE",xlab="Gender",ylab="%")#  adding x and y labels
barplot(pct,main="TITLE",xlab="Gender",ylab="%",las=1)
barplot(pct,main="TITLE",xlab="Gender",ylab="%",las=1,names.arg=c("Female","Male"))
barplot(pct,main="TITLE",xlab="Gender",ylab="%",las=1,names.arg=c("Female","Male"),horiz = T)

## piecharts
pie(pct)
pie(pct,main="TITLE")
## add box for above we use
box()


## boxplots 
boxplot(data1)
dim(data1)
class(data1)
quantile(data1,probs=c(0,0.25,0.5,0.75,1))### ask

boxplot(data1,main="boxplot",ylab="lung capacity")
boxplot(data1,main="boxplot",ylab="lung capacity",ylim=c(0,20))
boxplot(data1,main="boxplot",ylab="lung capacity",ylim=c(0,20),las=1)
boxplot(data1 ~ Gender)




