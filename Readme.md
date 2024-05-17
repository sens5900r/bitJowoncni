# bitJowoncni

이 R 패키지는 사용자들에게 제공되는 기능에 대한 간략한 설명입니다.

------------------------------------------------------------------------

여론조사회사 [조원씨앤아이](https://jowoncni.com)는 오픈소스 기반 데이터 과학의 발전을 응원하며, 데이터셋을 공개합니다. 정치조사에 관심있는 연구원 지망생에게 도움이 되기를 기대합니다. 분석역량 향상을 위한 목적으로 제공하는 데이터셋이므로, 조사결과의 내용적 측면의 부각은 취지와 부합하지 않습니다. [중앙선거여론조사심의위원회](https://www.nesdc.go.kr/portal/main.do)에서 시의성있는 자료를 활용할 수 있음을 알려드립니다.

------------------------------------------------------------------------

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
data <- load_st_news_sav("st_2307_5.sav") 
head(data)
```

## 설문지 보기

runJowoncni() 함수를 사용하면 inst/st_news/pdf 디렉토리에 있는 q_로 시작하는 .pdf 형식의 설문지 내용을 볼 수 있으며, 내려받기가 가능합니다.

```{r}
runJowoncni()
```

## 보고서 보기

runJowoncni() 함수를 사용하면 inst/st_news/pdf 디렉토리에 있는 r_로 시작하는 .pdf 형식의 보고서 내용을 볼 수 있으며, 내려받기가 가능합니다.

```{r}
runJowoncni()
```

## 이용 사례

아래 링크들은 bitJowoncni 패키지의 이용 사례를 확인하실 수 있습니다:

Shiny Application: [Survey Str](https://modernity.shinyapps.io/survey_str/)

Shiny Application: [Table S](https://modernity.shinyapps.io/Table_s/)

Documentation: [정례조사 요약](https://jowoncni1.github.io/site/survey_str.html)
