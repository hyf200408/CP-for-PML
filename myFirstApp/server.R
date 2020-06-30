#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:

library(shiny)
library(leaflet)

shinyServer(function(input, output) {
  output$map <- renderLeaflet({
    mymap <- addTiles(leaflet())
    mymap <- addMarkers(mymap,lng = input$long, lat = input$lat, 
                        popup = input$tag)
  })
})