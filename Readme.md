# bitJowoncni

이 R 패키지는 사용자들에게 제공되는 기능에 대한 간략한 설명입니다.

## 설치 방법

`devtools`를 사용하여 GitHub에서 직접 설치할 수 있습니다:

```{r}
devtools::install_github("sens5900r/bitJowoncni")
```

## 데이터 파일

inst/st_news/sav 디렉토리에는 여러 .sav 파일이 포함되어 있습니다. 이 파일들은 패키지의 다양한 기능에서 사용될 수 있습니다. 필요에 따라 해당 디렉토리에서 직접 파일을 참조하거나 로드하여 사용하실 수 있습니다.

## .sav 파일 로드하기

load_st_news_sav() 함수를 사용하면 inst/st_news/sav 디렉토리에 있는 .sav 파일을 쉽게 로드할 수 있습니다.

```{r}
data <- load_st_news_sav("st_20307_5.sav") 
head(data)
```

## 이용 사례

아래 링크들은 bitJowoncni 패키지의 이용 사례를 확인하실 수 있습니다:

Shiny Application: [Survey Str](https://modernity.shinyapps.io/survey_str/)

Shiny Application: [Table S](https://modernity.shinyapps.io/Table_s/)

Documentation: [정례조사 요약](https://jowoncni1.github.io/site/survey_str.html)
