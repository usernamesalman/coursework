library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Demonstration of Downloading the Datasets"),
        
        # Sidebar with controls to select a dataset and specify the
        # number of observations to view
        sidebarLayout(
                sidebarPanel( 
                        textInput("caption", "Caption:", "Data Summary"),
                        selectInput("dataset", "Choose a dataset:", 
                                    choices = c("rock", "pressure", "cars","BOD","airquality","USArrests")),
                        downloadButton('downloadData', 'Download')
                ),
                numericInput("obs", "Number of observations to view:", 10)
        ),
        
        # Show a summary of the dataset and an HTML table with the 
        # requested number of observations
        mainPanel(
                h3(textOutput("caption", container = span)),
                verbatimTextOutput("summary"),
                
                tableOutput("view"),
                tableOutput("table")
        )
)
)


##
