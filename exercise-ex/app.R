
library("shiny")  # load the package  

my.ui <- fluidPage(
  # formatted content
  h1("Hello Shiny"),
  
  # control widget
  textInput('user.name', label="What is your name?")
)

my.server <- function(input, output) {
  # assign a value to the `message` key in `output`
  # parameter is a reactive expression for showing text
  output$message <- renderText({
    # use the `username` key from input and and return new value
    # for the `message` key in output
    return(paste("Hello", input$username))
  })
}


shinyApp(ui = my.ui, server = my.server)