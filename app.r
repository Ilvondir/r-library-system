# Libraries ----
library(shiny)

# UI ----
ui <- uiOutput("page")

# Server ----
server <- function(input, output, session) {
  ## Login Panel layout ----
  loginPanel <- fluidPage( includeHTML("www/loginPanel.html") )
  
  
  output$UI <- renderUI(loginPanel)
}

# Shiny App ----
shinyApp(ui, server)