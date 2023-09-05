# st_news_r.R

library(shiny)
library(shinyalert)

# UI 모듈
st_news_r_ui <- function(id) {
  ns <- NS(id)
  tagList(
    fluidRow(
      column(8, selectInput(ns("select_pdf"), "보고서 선택:", choices = NULL)),
      br(),
      column(4, actionButton(ns("exitButton"), "종료"))  # 이름 변경 및 위치 조정
    ),
    uiOutput(ns("pdf_viewer"))
  )
}

# 서버 모듈
st_news_r_server <- function(input, output, session) {
  pdf_files_path <- system.file("st_news/pdf", package = "bitJowoncni")
  shiny::addResourcePath("pdfs", pdf_files_path)

  pdf_files <- list.files(path = pdf_files_path, full.names = TRUE, pattern = "r_*_*")
  sorted_files <- sort(basename(pdf_files), decreasing = TRUE)
  updateSelectInput(session, "select_pdf", choices = sorted_files)

  output$pdf_viewer <- renderUI({
    selected <- input$select_pdf
    if (!is.null(selected)) {
      tags$iframe(style="height:1150px; width:100%; scrolling=yes",
                  src = paste0("pdfs/", selected))
    } else {
      NULL
    }
  })

  # 종료 버튼 동작 정의
  observeEvent(input$exitButton, {
    shinyalert::shinyalert(
      title = "앱이 종료되었습니다.",
      text = "브라우저 창을 닫아주세요.",
      type = "info",
      timer = 3000,  # 3초 후에 알림 자동으로 닫힘
      callbackR = function(isConfirmed) {
        if (isConfirmed) {
          stopApp()
        }
      }
    )
  })
}
