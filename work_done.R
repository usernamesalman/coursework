#Reading CSV file 
csv_file<-read.table(file.choose(),header=T,sep=(","))

#reading delimited file

delim_file<-read.delim(file.choose(),header=T,sep=("\t"))

a<-c(1,3,5,6,9)
#sorting in ascending order
b<-sort(a)
#sorting in descending order
c<-sort(a,decreasing=T)
c<-rev(sort(a))

x=(-1)^(1/2)
#creating matrix 2x2
mat1 <- matrix( c(1:6), ncol=2)
#creating matrix 3x3
mat2 <- matrix( c(1:9), ncol=3)

#dataframes in R

a<-c(1:4,NA)
b<-c(5:7,NA,8)
c<-c(9,10,NA,11,12)
d<-c(13,NA,14,15,16)
e<-c(17:21)
d_frame<-data.frame(a,b,c,d,e)

#stacking the columns
stck<-stack(d_frame)

#unstacking the columns
unstck<-unstack(d_frame)

#combing dataframes

c_bind<-cbind(d_frame,d_frame,d_frame)
r_bind<-rbind(d_frame,d_frame,d_frame)

#to check the data types we use class command in R

check<-class(c_bind)

#conveient way to view a data frames(one excel type window
#will open)

fix(d_frame)

#transpose the dataframe

trans<-t(d_frame)

#subsetting Dataframes

d_frame[1, ] #first row of all the columns
d_frame[2, ] #second row of all the columns

d_frame[, 1] #All rows of first column
d_frame[, 2] #All rows of first column

d_frame $a # return column "a"
d_frame $b # return column "b"

#customized cases in subsetting

d_frame[!is.na(d_frame$a),] #Exclude NA's in first column

#calulation of factorial

f<-factorial(5)
#or
f<-prod(1:5)

sequence<-seq(1,20,2)#creating sequence incremented by 1

repet<-rep(sequence,2)#repeating the sequence two times

#EXERCISES:

#1. (???1)^(1/2) (Note: NaN stands for "Not a Number")
a<-(???1)^(1/2)

#2. The vector consisting of the decreasing sequence of consecutive integers from 57 to -11.
b<-c(57:-11)

#3. The vector consisting of the increasing sequence of odd integers from -11 to 57. 
c<-seq(-11,57,2)

#4  The vector consisting of five hundred alternating zeros and ones. 
d<-rep(0:1,500)

#5. The average of 12.7, 9.4, 6.6, 10.8, 5.3, and 7.2
e<-c(12.7, 9.4, 6.6, 10.8, 5.3, 7.2)
mean(e)

#6 Sort the six preceding numbers in decreasing order
f<-sort(e,decreasing = T)
f<-rev(sort(e))

#7. A vector of fifty, uniformly distributed, random values between - 1 and +1.
g<-runif(50,-1,1)

#8. The vector consisting of positive values from the preceding vector.
h<-subset(g,g>0)

#10. The vector of the first 1000 positive integers, without the perfect squares.
x<-seq(1,1000)
y<-x^2
z<-x[-y]

# GENERATE 10 RANDOM PAIRS 

group = 1:20
mylist = NULL

for (m in 1:10) {
  pair = sample(group, 2, F)
  mylist = rbind(mylist, pair)
  i1 = which(group == pair[1])	
  i2 = which(group == pair[2])
  group = group[-c(i1, i2)]
}

print(mylist)

# https://bit.ly/LungCapDataxls
lung<-read.table(file.choose(),header=T,sep=(","))

attach(lung)
dim(lung)

#BARPLOT
count<-table(Gender)# number of males & females

per<-table(Gender)/725*100 #percentage of males & females

#To create a barplot
barplot(count)# plot will appear in right side window
barplot(per)

barplot(per,main="% for M & F",xlab="Gender",ylab="%",las=1)

