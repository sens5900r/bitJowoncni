#' bitJowoncni 패키지가 부착될 때 실행되는 함수입니다.
#'
#' 이 함수는 패키지 사용자에게 변수의 명명 규칙에 관한 메시지를 제공합니다.
#'
#' @param libname 패키지의 라이브러리 경로
#' @param pkgname 패키지의 이름
#'
#' @keywords internal
.onAttach <- function(libname, pkgname) {
  msg <- c(
    "Remember the variable naming convention:",
    "SQ1 = AGE, SQ2 = SEX, SQ3 = LOC, Demo01 = SD1, QA01 = SA1, QB01 = SB1, ..."
  )
  for (m in msg) {
    message(m)
  }
}
