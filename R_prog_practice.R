
## The apply function

mat1 <- matrix(rep(seq(4), 4), ncol = 4)
#row sums of mat1
apply(mat1, 1, sum)


#column sums of mat1
apply(mat1, 2, sum)
#creating a data frame using mat1
mat1.df <- data.frame(mat1)

lapply(mat1.df, sum)

y <- lapply(mat1.df, sum)
#verifying that y is a list
is.list(y)

#names of the elements in y
names(y)
#displaying the first element
y[[1]]
# or
y$X1
#displaying the first two results in the list
y[1:2]
y1 <- lapply(mat1.df, function(x, y) sum(x) + y, y = 5)

unlist(lapply(1:5, function(i) print(i) ))

#creating the data set with two categorical variables
x1 <- runif(16)


cat1 <- rep(1:4, 4)
cat2 <- c(rep(1, 8), rep(2, 8))

mat2.df <- data.frame(x1)
names(mat2.df) <- c("x1")
mat2.df$cat1 <- cat1
mat2.df$cat2 <- cat2
mat2.df

#creating the data set

a <- matrix(runif(100, 1, 2),20)
a2 <- sweep(a, 2, colSums(a), "/")

x<-BOD
is.matrix(x)
is.data.frame(x)
class(x)
y <- x[2,]
is.list(y)
is.data.frame(y)
x$Time
x$demand

attach(x)
demand
detach(x)
demand

## crossprod

x <- matrix(1:9,3,3)
crossprod(x)  