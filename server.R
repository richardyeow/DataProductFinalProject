library(shiny)
library(ggplot2)
library(datasets)
shinyServer(function(input, output) {

        airquality
        Mean <- reactive({
                x <- input$MonthSlider
                airquality_calc <- airquality[airquality2$Month==x,]
                mean(airquality_calc$Temp)})
        
        output$Mean <- renderText({Mean()})
        
        output$plot1 <- renderPlot({
                x <- input$MonthSlider
                airquality_calc <- airquality[airquality2$Month==x,]
                main <- ifelse(input$show_title, "Temperature by Month", "")
                ggplot(airquality_calc, aes(x=Temp))+
                        geom_histogram(color="black", fill="white")+
                        labs(title=main)
                
        
                
        
                
                
        
})})