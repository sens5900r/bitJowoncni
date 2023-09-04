#' Load a .sav file from the st_news/sav directory of the bitJowoncni package
#'
#' This function provides a convenient way to load .sav files that are stored
#' in the st_news/sav directory of the bitJowoncni package.
#'
#' @param filename The name of the .sav file you want to load from the st_news/sav directory.
#' @return A data frame containing the loaded data.
#' @export
#' @examples
#' \dontrun{
#' data <- load_st_news_sav("example_file.sav")
#' head(data)
#' }
load_st_news_sav <- function(filename) {
  path <- system.file("st_news", "sav", filename, package="bitJowoncni")
  if (file.exists(path)) {
    return(haven::read_sav(path))
  } else {
    stop(paste("No such file:", filename))
  }
}
