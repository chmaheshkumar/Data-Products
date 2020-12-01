#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    datasetInput <- reactive({
        switch(input$dataset,
               "airquality" = airquality,
               "CO2" = CO2,
               "cars" = cars)
    })
    
    # Generate a summary of the dataset
    output$summary <- renderPrint({
        dataset <- datasetInput()
        summary(dataset)
    })
    
    # Show the first "n" observations
    output$text1 <- renderTable({
        head(datasetInput(), n = input$obs)
    })

})
