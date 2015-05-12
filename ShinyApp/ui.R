library(shiny)

# ui.R

# Define UI for application that draws a histogram
shinyUI(
    fluidPage(
        titlePanel("Developing Data Products: Course Project"),
        p(span("Description: ", style="color:blue"), "This page shows 1974 car models sold in the US as reported by Motor Trends magazine."),
        p(span("Purpose: ", style="color:blue"), "Average MPG ('Miles-Per-Gallon') across car models for specific number of cylinders and type of transmission."),
        p(span("Instructions: ", style="color:blue"), "To select the car models to evaluate, do the following", br(), "1- Select a radio button for number of cylinders", br(), "2- Select a radio button for type of transmission", br(), "3- Click 'SUBMIT'"),
        fluidRow(
            
            column(3,
                   radioButtons(
                       "cylinders", 
                       label = h3("Cylinder Count"), 
                       choices= list(4, 6, 8), 
                       selected = 4)
                   ),
            
            column(3, 
                   radioButtons(
                       "transmission", 
                        label = h3("Transmission"), 
                        choices = list(
                            "automatic" = 0, 
                            "manual" = 1),
                            selected = 0)
                   )
        ),        
        fluidRow(
            column(3, 
                   submitButton("Submit"),
                   br()
            )   
        ),        
        sidebarLayout(
            sidebarPanel(
                img(src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ0j-GDJOd53Z_jT5Udk6yRGANIclLOGxbo6yoqsJ0-1OKIYVKr", align="center")
            ),
            mainPanel(
                htmlOutput("text1"),
                textOutput("avgMpg")
            )
        )
    )
)