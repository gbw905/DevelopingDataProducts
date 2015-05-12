##load(shiny)
data(mtcars)

# Define server logic required to draw a histogram
shinyServer(
    function(input, output) {
        output$var1 <- renderText({
            paste("var1=", input$cylinders)
        })
        output$var2 <- renderText({
            paste("var2=", input$transmission)
        })
        output$text1 <- renderTable({
           mtcars[mtcars$cyl==input$cylinders & mtcars$am==input$transmission,][1]
        })
        output$avgMpg <- renderText({
            paste("Average MPG: ", 
                  format(
                      round(
                            mean(
                                mtcars[mtcars$cyl==input$cylinders & 
                                           mtcars$am==input$transmission,1]
                            ),2
                      ), nsmall=2
                  )
            )
        })
    }
)