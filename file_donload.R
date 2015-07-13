
#download a file into the folder

setwd("D:/sal_D")
getwd()
company<-function()
{
        library(RCurl)
        library(XML)
        library(qdapRegex)
        library(raster)
        
        str<-readline(prompt="Enter The Company Name:") 
        cmp<-gsub("[[:space:]]", "+", str)
        str1<-"http://www.sec.gov/cgi-bin/browse-edgar?company="
        str2<-"&owner=exclude&action=getcompany"
        temp <- tempfile()
        url<-paste(str1,cmp,str2,sep="")
        destfile="D:/sal_D/task_downloading.R"
        x<-download.file(url, destfile,cacheOK = TRUE,quiet = FALSE, mode = "w",extra = getOption("download.file.extra"))

        class(x)
length(x)
}
