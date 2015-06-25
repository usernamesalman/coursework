library(rvest)
library(qdapRegex)
library( stringr)
library(pipeR) # %>>% will be faster than %>%
u<-html("https://en.wikipedia.org/?title=R_%28programming_language%29")%>>% html_nodes("a") %>>% html_attr("href")

#mat<-as.list(u)
#l<-lapply(mat, function(x) x[!is.na(x)])
#l1<-as.character(l)
#class(l1)
m<-rm_url(u,extract=T,clean=T)
class(m)
apply(m, 1, function(x) x[!is.na(x)])
n<-as.matrix(m)
class(n)
for (i in n){
  if (i== NA){
    print i
  }
  
}