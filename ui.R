library(shiny)
library(shinyTable)
#' Define UI for application that demonstrates a simple Handsontable
#' @author Jeff Allen \email{jeff@@trestletech.com}
shinyUI(fluidPage(title="handsonimport",

  # Application title
  titlePanel("Import from spreadsheet"),

  sidebarPanel(
    fileInput('file1', label=HTML("Choose Spreadsheet File:  <br>(.xls, .xlsx, .csv) "),
              accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
    hr(),
    bsTypeAhead(inputId = "ta2", label = "Import as ID:",
                choices = c('iShares ETF', 'Vanguard Fund', 'Some Other Fund')),

    hr(),
    bsTypeAhead(inputId = "ta1", label = "Import as Metric:",
                choices = c('Exposure', 'VaR', 'Instrument')),
    hr(),
    dateInput("date", label = "Import as of Date:", value = "2014-01-01"),
    hr(),
    helpText(HTML("<p>Created using <a href = \"http://github.com/trestletech/shinyTable\">shinyTable</a>."))
#     pollutants = c('Acetone', 'Acrolein', 'Benzene', 'Benzyl Chloride', ...)
    ),

  # Show the simple table
  mainPanel(
    HTML("Select region to import:"),
    p(),
    htable("tbl", colHeaders="provided"),
    br(),
    fluidRow(column(10, submitButton("Import")))
  )


))
