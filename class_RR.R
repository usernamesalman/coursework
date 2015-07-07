search()

##

m.pwr<-function(n){
  pow <-function(x){
    x^n
  }
  pow
}

cube<-m.pwr(3)
sqrr<-m.pwr(2)
cube(2)
sqrr(2)


ls(environment(sqrr))

get("n", environment(sqrr))

##

y<-10
f<-function(x){
  y<-2
  y^2 +g(x)
}
g<-function(x){
  x*y
}
f(3) 

##
x<-as.Date("1970-01-01")
unclass(x)
x<-Sys.time()
y<-as.POSIXct(x)
summary(y)
z<-as.POSIXlt(x)
names(z)
summary(z)

str(z)
str(y)
strptime(x,)

str(str)
str(lm)
str(airquality)
str(sessionInfo())
