
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

# download html
html <- getURL(url, followlocation = TRUE)

# parse html
doc = htmlParse(html, asText=TRUE)
plain.text <- xpathSApply(doc, "//p", xmlValue)
print(plain.text)
write.table(plain.text,"D:/salman/extraction.txt")

}


# load packages
library(XML)
library(RCurl)
link=scan(what=" ")
link
#content
htmlParse(link)
# text
htmlParse(link ,asText=TRUE)
doc = htmlParse(link, asText=TRUE)
#extract the text between paragraph tags "<p>" and "</p>"
plain.text <- xpathSApply(doc, "//p", xmlValue)
cat(paste(plain.text, collapse = "\n"))
cat("\n","Enter filename","\n") # prompt


