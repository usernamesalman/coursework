#ui


setwd("D:/rshiny")



library(shiny)


shinyUI(fluidPage(
        
        titlePanel("Hello Shiny"),
        sidebarLayout(
                sidebarPanel(),
                mainPanel()
        )
)
)
##

## text input shiny widgets
library(shiny)


shinyUI(fluidPage(
        
        titlePanel("widgets"),
        sidebarLayout(
                sidebarPanel(("enter info"),
                             textInput(inputId="Name",label="Enter Your Name",value=" "),
                             textInput(inputId="Age",label="Enter Your Age",value=" ")),
                mainPanel(("person information"),
                          textOutput("myName"),
                          textOutput("myAge")
                )
        )
)
)


###
## radiobuttons

library(shiny)


shinyUI(fluidPage(
        
        titlePanel("widgets"),
        sidebarLayout(
                sidebarPanel(
                        ("enter information"),
                        textInput(inputId="Name",label="Enter Your Name",value=" "),
                        textInput(inputId="Age",label="Enter Your Age",value=" "),
                        radioButtons("Gender","Select the Gender",list("Male","Female"))),
                mainPanel(("person information"),
                          textOutput("myName"),
                          textOutput("myAge"),
                          textOutput("myGender")
                )
                
        )
)
)

###

## how to use sliderInput widgets in shiny


library(shiny)

shinyUI(fluidPage(
        titlePanel("sliderInput widgets "),
        sidebarLayout(
                sidebarPanel(
                        sliderInput(inputId="slide",label="select value from slider",min=0,max=100,value=c(20,70))#value=50 )
                ),
                mainPanel(
                        textOutput("out")
                )
        )
)
)

##  select input Ui widget


library(shiny)

shinyUI(fluidPage(
        titlePanel("sliderInput widgets "),
        sidebarLayout(
                sidebarPanel(
                        selectInput(inputId="Statenames",label="Select the state",c("Delhi","Bangaluru","Chennai","Patna","Tamil Nadu"),selected="Patna",selectize = T,multiple=T)
                ),
                mainPanel(
                        textOutput("state")
                )
        )
)
)

# how to plot using renderPlot() 
