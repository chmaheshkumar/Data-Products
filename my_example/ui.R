#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Dataset Summary"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("dataset", "Choose a dataset:", 
                        choices = c("airquality", "CO2", "cars")),
            numericInput("obs","Number of observations to view:",15)
            
           
        ),

        # Show a plot of the generated distribution
        mainPanel(
            verbatimTextOutput("summary"),
            
            tableOutput("text1")
        )
    )
))
