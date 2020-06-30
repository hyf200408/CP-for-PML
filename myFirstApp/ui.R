library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Worldwide Map Service"),
  
  sidebarLayout(
    sidebarPanel(
      h5("Type your coordinates in the boxes below, 
         and we will present your map!"),
      numericInput("lat", "Your latitude: ", 
                   value = 0, min = -90, max = 90, step = 0.1),
      numericInput("long", "Your longitude: ", 
                   value = 0, min = -180, max = 180, step = 0.1),
      textInput("tag", "Location description: ", 
                "In the middle of nowhere")
    ),
    
    mainPanel(
      leafletOutput("map")
    )
  )
))
