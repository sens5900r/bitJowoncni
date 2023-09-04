# tests/testthat/test-load_st_news_sav.R

library(bitJowoncni)
library(testthat)

test_that("Load a valid .sav file returns a data frame", {
  actual_filename <- "st_2301_2.sav"
  data <- load_st_news_sav(actual_filename)

  # 데이터를 성공적으로 불러왔는지 확인합니다.
  expect_true(is.data.frame(data))
})

test_that("Loading a non-existent .sav file throws an error", {
  non_existent_filename <- "this_file_should_not_exist.sav"

  # 함수가 에러를 반환하는지 확인합니다.
  expect_error(load_st_news_sav(non_existent_filename), "No such file:")
})
