setwd("D:/salman/coursework")
setwd("D:/salman/coursework")


library(shiny)
shinyUI(fluidPage(
  titlePanel(title="This is my first app, hello shiny"),
  sidebarLayout(position="right",
    sidebarPanel(h3("This is the side bar panel"),h4("widget4"),h5("widget5")),
    mainPanel(h4("This is the main panel text,output is displayed here"),
                      h5("this is the output5"))
  )
))
