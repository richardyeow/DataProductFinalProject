library(shiny)
shinyUI(fluidPage(
        sidebarLayout(
                sidebarPanel(
                        sliderInput("MonthSlider", "Pick the month",
                                    5, 9, value = 1),
                        checkboxInput("show_title", "Show/Hide Title")

                ),
                mainPanel(
                        plotOutput("plot1"),
                        
                        h3("Mean for the month selected"),
                        textOutput("Mean")
                        
                )
        )
))