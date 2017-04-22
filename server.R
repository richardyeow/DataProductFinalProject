library(shiny)

shinyServer(function(input, output) {
        library(ggplot2)
        library(datasets)
        airquality
        Mean <- reactive({
                x <- input$MonthSlider
                airquality_calc <- airquality[airquality$Month==x,]
                mean(airquality_calc$Temp)})
        
        output$Mean <- renderText({Mean()})
        
        output$plot1 <- renderPlot({
                x <- input$MonthSlider
                airquality_calc <- airquality[airquality$Month==x,]
                main <- ifelse(input$show_title, "Temperature by Month", "")
                ggplot(airquality_calc, aes(x=Temp))+
                        geom_histogram(color="black", fill="white")+
                        labs(title=main)
                
        
                
        
                
                
        
})})