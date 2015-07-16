setwd("D:/rshiny")

library(shiny)

shinyServer(function(input, output) {
}
)



##

setwd("D:/rshiny")

library(shiny)

shinyServer(function(input, output) {
        output$myName<-renderText(input$Name)
        output$myAge<-renderText(input$Age)
        output$myGender<-renderText(input$Gender)
}
)



## how to use sliderInput widgets in shiny

library(shiny)
shinyServer(function(input,output){
        #output$out<-renderText(input$slide)
        output$out<-renderText(
                paste("You select the value as:",input$slide))
        
})

##  select input Ui widget

library(shiny)

shinyServer(function(input, output) {
        output$state<-renderText(input$Statenames)
}
)

##
## how to plot using renderPlot() 

################################
