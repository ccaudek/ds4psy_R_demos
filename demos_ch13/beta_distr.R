library(shiny)
library(bayesrules)  

# Build the server
server1 <- function(input, output) {
  output$priorPdf <- renderPlot({
    plot_beta(alpha = input$aPrior, beta = input$bPrior) 
  })
  
  output$priorTable <- renderTable({
    summarize_beta(alpha = input$aPrior, beta = input$bPrior)
  })
}

# Build the user interface
ui1 <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      h4("Funzione Beta(alpha, beta):"), 
      sliderInput("aPrior", "alpha", min = 0, max = 100, value = 1),
      sliderInput("bPrior", "beta", min = 0, max = 100, value = 1),
      h4("Limite dell'asse y:"), 
      sliderInput("ymax", "", min = 1, max = 40, value = 10)
    ),
    mainPanel(
      h4("Grafico della funzione di densità:"), 
      plotOutput("priorPdf"),
      h4("Proprietà:"), 
      tableOutput("priorTable")
    )
  )
)

# Run the shiny app!
shinyApp(ui = ui1, server = server1)
