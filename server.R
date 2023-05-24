
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

voltree <- function(radius1, radius2,height){
  volume <- round(((radius1+radius2)/2*height), digits =1)
}

co2func <- function(radius1, radius2,height,Co2_content){
    co2 <- round(((radius1+radius2)/2*height)*0.5*Co2_content, digits =1) 
}

shinyServer(
    function(input, output){
        output$volume <- renderText({voltree(input$radius1, input$radius2,
                                             input$height)})
        output$co2 <- renderText({co2func(input$radius1, input$radius2,
                                          input$height, input$Co2_content)})
    }
)
