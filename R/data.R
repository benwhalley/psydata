#' Simplified dataset based on Solbrig et al 2017
#'
#' A dataset containing patient outcome data from an RCT of functional imagery training for weight loss.
#'
#' @format A data frame with 112 rows and 7 variables:
#' \describe{
#'   \item{kg1}{XXX TODO COMPLETE LIST HERE}
#'
#'   ...
#' }
#' @source \url{https://zenodo.org/record/1120364#.YRF9ai9Q2CM}
"fit"



#' Simplified dataset based the Gallup World Happiness report
#'
#' A dataset containing nation-level indicators for life staisfaction and happiness
#'
#' @format A data frame with 1949 rows and 11 columns:
#' \describe{
#'   \item{country}{Name of country}
#'   \item{year}{Year of sample}
#'   \item{happiness}{[0-10] Measure of subjective wellbeing. The English wording of the question is "Please imagine a ladder, with steps numbered from 0 at the bottom to 10 at the top. The top of the ladder represents the best possible life for you and the bottom of the ladder represents the worst possible life for you. On which step of the ladder would you say you personally feel you stand at this time?"}
#'   \item{social_support}{[0-1] National average of responses to the question: "If you were in trouble, do you have relatives or friends you can count on to help you whenever you need them, or not?"}
#'   \item{healthy_life_expectancy_at_birth}{National average in year; based on WHO data.}
#'   \item{freedom_to_make_life_choices}{}
#'   \item{generosity}{National average of response to: "Have you donated money to a charity in the past month?"}
#'   \item{perceptions_of_corruption}{[0-2] National average of 0/1 responses to “Is corruption widespread throughout the government or not” and “Is corruption widespread within businesses or not?”}
#'   \item{positive_affect}{National average of three items: 'happiness', 'laugh' and 'enjoyment'.}
#'   \item{negative_affect}{National average of three items: 'worry', 'sadness' and 'anger'.}
#'   \item{gdp_per_capita}{Gross domestic product per capita, in USD}
#'   ...
#' }
#' @source \url{https://worldhappiness.report/ed/2021}
"fit"



#' Simplified dataset based on the classic mtcars data
#'
#' A dataset A data frame with 32 observations on 11 (numeric) variables.
#'
#' @format A data frame with 112 rows and 7 variables:
#' \describe{
#'   \item{kg1}{XXX TODO COMPLETE LIST HERE}
#'
#'   ...
#' }
#' @source \url{https://zenodo.org/record/1120364#.YRF9ai9Q2CM}
"fit"


.onLoad <- function(libname, pkgname){
  packageStartupMessage("Loading datasets for teaching R to psychology students.")

  packageStartupMessage("\nDatasets loaded:")
  ds <- data(package='psydata')
  packageStartupMessage(
    paste(as.data.frame(ds$results)$Item, collapse=", ")
  )

  packageStartupMessage("\n\nType help(datasetname) for more information about the data.")

}
