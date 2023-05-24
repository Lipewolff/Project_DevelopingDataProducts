# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Calculate CO2 content in a tree by Smalian formula"),
    sidebarPanel(
        h5("CO2 content is a measure of how much C has a forest based on the trees formation and forest density"),
        numericInput("radius1", "Input radius 1 (m)", value=0.3),
        numericInput("radius2", "Input radius 2 (m)", value=0.1),
        numericInput("height","Input the height of the tree (m)", value = 10),
        numericInput("Co2_content", "Input the estimated amount of Co2 (30-60%)", value = 0.5),
        submitButton("Calculate")
    ),
    mainPanel(
        h3("Results:"),
        p("Total Volume of the tree (m3):"),
        verbatimTextOutput("volume"),
        p("Total Co2 estimated(kg):"),
        verbatimTextOutput("co2")
        )
))
