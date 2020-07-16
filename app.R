library(shiny)

#source('global.R')
library(shinyjs)

library(shinycssloaders)

library(shinyWidgets)

library(shinythemes)


source('UI.R', local = TRUE)
source('server.R')

shinyApp(
  ui = UI,
  server = server
)