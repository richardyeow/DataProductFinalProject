library(shiny)
shinyUI(fluidPage(
        titlePanel("New York Air Quality Measurements"),
        sidebarLayout(
                sidebarPanel(
                        sliderInput("MonthSlider", "Slice to choose the month (from May to Sep)",
                                    5, 9, value = 1),
                        checkboxInput("show_title", "Show/Hide the Chart Title")

                ),
                mainPanel(
                        plotOutput("plot1"),
                        
                        h3("Mean for the month selected"),
                        textOutput("Mean")
                        
                )
        )
))