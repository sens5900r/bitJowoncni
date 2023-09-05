library(shiny)
source("st_news_q.R")
source("st_news_r.R")

ui <- navbarPage("조원씨앤아이", # 이곳에 앱의 제목을 추가해주세요.
                 tabPanel("설문지", st_news_q_ui("pdf_q_module")),
                 tabPanel("보고서", st_news_r_ui("pdf_r_module"))
)

server <- function(input, output, session) {
  callModule(st_news_q_server, "pdf_q_module")
  callModule(st_news_r_server, "pdf_r_module")
}

shinyApp(ui, server)
