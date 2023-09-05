#' Launch the Shiny App from bitJowoncni package
#'
#' This function runs the Shiny app included in the bitJowoncni package.
#'
#' @export
#' @examples
#' \dontrun{
#' runJowoncni()
#' }
runJowoncni <- function() {
  app_dir <- system.file("app", package="bitJowoncni")
  shiny::runApp(app_dir, launch.browser = TRUE)
}
