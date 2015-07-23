
library(shiny)
library(datasets)

# Define server logic required to summarize and view the selected
# dataset
shinyServer(function(input, output) {
        
        # Return the requested dataset
        datasetInput <- reactive({
                switch(input$dataset,
                       "rock" = rock,
                       "pressure" = pressure,
                       "cars" = cars,
                       "BOD"=BOD,
                       "airquality"=airquality,
                       "USArrests"=USArrests
                )
        })
        output$caption <- renderText({
                input$caption
        })
        # Generate a summary of the dataset
        output$summary <- renderPrint({
                dataset <- datasetInput()
                summary(dataset)
        })
        
        # Show the first "n" observations
        output$view <- renderTable({
                head(datasetInput(), n = input$obs)
        })
        ## to download the datasets
        output$downloadData <- downloadHandler(
                filename = function() { paste(input$dataset, '.csv', sep='') },
                content = function(file) {
                        write.csv(datasetInput(), file)
                })
})

##
