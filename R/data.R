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



#' Data from Bae et al. 2018: "PTSD correlates with somatization in sexually abused children: Type of abuse moderates the effect of PTSD on somatization"
#'
#' A dataset A data frame with 63 observations on 10 variables.
#'
#' @format A data frame with 63 rows and 10 columns:
#' \describe{
#'   \item{participant}{Identifier}
#'   \item{age}{In years}
#'   \item{fsiq}{Full-Scale IQ from the Korean version IV of the Wechsler Intelligence Scale for Children}
#'   \item{perpetrator_gender}{}
#'   \item{parents}{Describes who the child lived with}
#'   \item{perpetrator_relation}{Relationship of the perpetrator to the child}
#'   \item{number_of_perpetrators}{Single or multiple}
#'   \item{type_of_abuse}{Nature of the abuse experienced}
#'   \item{tscc_pts}{Trauma Symptom Checklist for Children score}
#'   \item{cbcl_som}{A somatization measure, based on the Child Behavioral Checklist items 6–18}
#'
#'   ...
#' }
#' @source \url{https://doi.org/10.1371/journal. pone.0199138}
"bae2018"



#' BMI and quality of life data, based on the Health Survey England 2005 and 2008 cohorts,
#'
#' A data frame with 35,916 rows and 11 columns.
#'
#' @format A data frame with 63 rows and 10 columns:
#' \describe{
#'   \item{id}{Identifier}
#'   \item{age}{In years}
#'   \item{bmi}{Body mass index}
#'   \item{sex}{Biological sex of participant}
#'   \item{eq5d}{Health utility (quality of life) based on EQ-5D. 1 = perfect health.}
#'   \item{perpetrator_relation}{Relationship of the perpetrator to the child}
#'   \item{number_of_perpetrators}{Single or multiple}
#'   \item{type_of_abuse}{Nature of the abuse experienced}
#'   \item{tscc_pts}{Trauma Symptom Checklist for Children score}
#'   \item{cbcl_som}{A somatization measure, based on the Child Behavioral Checklist items 6–18}
#'
#'   ...
#' }
#' @source \url{https://doi.org/10.1371/journal. pone.0199138}
"bmi"


#' Simplified data from Blomkvist et al 2017, https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0189598
#'
#' Data on aging and reaction time, collected with a WII fit device.
#'
#' @format A data frame with 354 rows and 4 columns:
#' \describe{
#'   \item{gender}{Gender}
#'   \item{rt_hand_dominant}{Reaction time (dominant hand)}
#'   \item{age_years}{Age in years}
#'   \item{n_medicines}{Number of medicines prescribed}
#'   ...
#' }
#' @source \url{https://doi.org/10.1371/journal.pone.0189598.s001}
"wii_rt"



#' A tidied (long form) version of `wii_rt` from this package
#'
"wii_rt_tidy"

#' A copy of the built-in `attitude` data, with an added `participant` column to demonstrate reshaping
#'
"employees"



.onLoad <- function(libname, pkgname){
  packageStartupMessage("Loading datasets for teaching R to psychology students.")

  packageStartupMessage("\nDatasets loaded:")
  ds <- data(package='psydata')
  packageStartupMessage(
    paste(as.data.frame(ds$results)$Item, collapse=", ")
  )

  packageStartupMessage("\n\nType help(datasetname) for more information about the data.")

}
