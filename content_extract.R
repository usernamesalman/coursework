  
  
  func<-function()
  {
    url<- readline(prompt = "Enter X1 value: ")
    fun(url)
  }
  fun<-function(url)
  {
    # load packages
    library(RCurl)
    library(XML)
    library(qdapRegex)
    library(gsubfn)
    library( stringr)
    html <- getURL(url, followlocation = TRUE)
    phone<-rm_phone(html,extract=TRUE)
    x<-sub("[[:space:]]+$", "", html)
   
    #phone<-rm_phone(m,extract=TRUE)
    # download html
   
    
    # parse html
    doc = htmlParse(x, asText=TRUE)
    plain.text <- xpathSApply(doc, "//table//li", xmlValue,simplify = T)
    plain.text1 <- xpathSApply(doc, "//table//li//a",simplify = T,xmlGetAttr,'href')
    
    print(plain.text[1])
    
    n<-length(plain.text1)
    try(
      for(i in 1:n)
      {
        
        h<-paste(url,plain.text[i],sep="")[[1]]
        html1 <- getURL(h, followlocation = TRUE)
        doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
        plain.text2 <- xpathSApply(doc1, "//p",xmlValue,simplify = TRUE)
        print(plain.text2[1])
        
        
      })
  }

  
  ##plainsboronj.com
  
  
  pageurl<-function(){
    mydata<-read.csv("D:/vijji/county_township_information.csv",header=TRUE,sep=",")
    a<-nrow(mydata)
    for(i in c(1:a)){
      
      url<-mydata[i,2]
      pathname=file.path("D:","salman","extraction",mydata[i,1])
      file.create(pathname)
      
      msg<-try(htmltotext(url))
      
      if(class(msg)=="try-error") {
        write(msg,pathname)
        
        next;
        
      }
      sink(pathname,append=TRUE)
    }
    
  }
  
  htmltotext<-function(url)
  {
    library(RCurl)
    library(XML)
    html <- getURL(url, followlocation = TRUE)
    doc = htmlParse(html, asText =TRUE)
    print(doc)
  }
  
 
  
  ##
  library(XML)
  library(RCurl)
  options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
  library(stringr)
  
  path<-"https://wiki.python.org/moin/BeginnersGuide"
  webpage <- getURL(path)
  webpage <- readLines(tc <- textConnection(webpage)); close(tc)
  
  pagetree <- htmlTreeParse(webpage, error=function(...){}, useInternalNodes = TRUE, encoding = "UTF-8")
  # Extract table header and contents
  tablehead <- xpathSApply(pagetree, "//*/table/tr", xmlValue)
  country<-tablehead[2]
  
  ##
  library(RCurl)
  library(XML)
  
  library( stringr)
  
  url <- "https://www.tripping.com/search?search-input=Carteret%2C+%20NJ%2C+United+States&cam=721&utm_source=bing&utm_medium=cpc&utm_campaign=GEO%20-%20City%20ST&utm_term=Carteret"
html <- paste(readLines(url), collapse="\n")

  matched <- str_match_all(html, "<a href="http://www.ptop.se" target="_blank">http://www.ptop.se</a>")
print(matched)

###
library(RCurl)
library(XML)
library( stringr)

url <- "https://www.tripping.com/search?search-input=Carteret%2C+%20NJ%2C+United+States&cam=721&utm_source=bing&utm_medium=cpc&utm_campaign=GEO%20-%20City%20ST&utm_term=Carteret"
html <- paste(readLines(url), collapse="\n")
matched <- str_match_all(html, "<a href=\"(.*?)\"")
print(matched)


links <- function(URL) 
{
  getLinks <- function() {
    links <- character()
    list(a = function(node, ...) {
      links <<- c(links, xmlGetAttr(node, "href"))
      node
    },
    links = function() links)
  }
  h1 <- getLinks()
  htmlTreeParse(URL, handlers = h1)
  h1$links()
}

links("https://www.tripping.com/search?search-input=Carteret%2C+%20NJ%2C+United+States&cam=721&utm_source=bing&utm_medium=cpc&utm_campaign=GEO%20-%20City%20ST&utm_term=Carteret")
##
library(XML)
library(RCurl)
getHTMLLinks("https://www.tripping.com/search?search-input=Carteret%2C+%20NJ%2C+United+States&cam=721&utm_source=bing&utm_medium=cpc&utm_campaign=GEO%20-%20City%20ST&utm_term=Carteret")


##


library(rvest)
library(pipeR) # %>>% will be faster than %>%
html("https://en.wikipedia.org/?title=R_%28programming_language%29")%>>% html_nodes("a") %>>% html_attr("href")

##
library(rvest)
library(rvest)
links <- function(URL) 
{
  getLinks <- function() {
    links <- character()
    list(a = function(node, ...) {
      links <<- c(links, xmlGetAttr(node, "href"))
      node
    },
    links = function() links)
  }
  h1 <- getLinks()
  htmlTreeParse(URL, handlers = h1)
  h1$links()
}

