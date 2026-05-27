library(shiny)
library(tidyverse)

# Load data 
clinical_data <- read_csv("data/clinical_data.csv")

# UI 
ui <- fluidPage(
  titlePanel("Clinical Trial Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "biomarker",
        "Select Biomarker:",
        choices = c("biomarker_1", "biomarker_2")
      )
    ),
    
    mainPanel(
      plotOutput("plot"),
      tableOutput("summary_table")
    )
  )
)

# Server 
server <- function(input, output) {
  
  output$plot <- renderPlot({
    clinical_data |>
      ggplot(aes(x = .data[[input$biomarker]], fill = treatment)) +
      geom_histogram(alpha = 0.6, position = "identity") +
      labs(title = "Biomarker Distribution")
  })
  
  output$summary_table <- renderTable({
    clinical_data |>
      group_by(treatment) |>
      summarise(
        mean_value = mean(.data[[input$biomarker]]),
        n = n()
      )
  })
}

shinyApp(ui = ui, server = server)