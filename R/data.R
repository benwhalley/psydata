#' Simplified dataset based on Solbrig et al 2017
#'
#' A dataset containing patient outcome data from an RCT of functional imagery training for weight loss.
#'
#' @format A data frame with 112 rows and 7 variables:
#' \describe{
#'   \item{kg1}{Weight at baseline}
#'   \item{kg2}{Weight at end of treatment}
#'   \item{kg3}{Weight at 12 month followup}
#'   \item{gender}{}
#'   \item{intervention}{FIT or MI (control) treatment}
#'   \item{person}{Identifier}
#'   \item{age}{In years}
#'   \item{weight_lost_end_trt}{kg2 minus kg1}
#' }
#' @source \url{https://zenodo.org/record/1120364#.YRF9ai9Q2CM}
"funimagery"



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
"happy"




#' Simplified dataset based on the classic mtcars data
#'
#' A dataset A data frame with 32 observations on 11 (numeric) variables.
#' See help(mtcars) for details of this dataset.
"fuel"



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
#'   \item{sex}{}
#'   \item{eq5d}{Health utility (quality of life) based on EQ-5D. 1 = perfect health.}
#'   \item{mobility}{EQ5D item score}
#'   \item{selfcare}{EQ5D item score}
#'   \item{usualact}{EQ5D item score}
#'   \item{pain}{EQ5D item score}
#'   \item{anxiety}{EQ5D item score}
#'   \item{cohort}{Year of survey}
#' }
#' @source \url{Data based on the HSE 2005 and 2008 cohorts. See: https://digital.nhs.uk/data-and-information/publications/statistical/health-survey-for-england#past-publications }
"bmi"


#' Data on aging and reaction time, collected with a WII fit device.
#' A simplified version of the dataset in Blomkvist et al 2017, https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0189598
#'
#' @format A data frame with 354 rows and 4 columns:
#' \describe{
#'   \item{gender}{Self identified}
#'   \item{rt_hand_dominant}{Reaction time (dominant hand)}
#'   \item{rt_foot_dominant}{Reaction time (dominant hand)}
#'   \item{rt_hand_nondominant}{Reaction time (non-dominant hand)}
#'   \item{rt_foot_nondominant}{Reaction time (non-dominant hand)}
#'   \item{age_years}{Age in years}
#'   \item{n_medicines}{Number of medicines prescribed}
#' }
#' @source \url{https://doi.org/10.1371/journal.pone.0189598.s001}
"wii_rt"



#' A tidied (long form) version of `wii_rt` from this package
#' See `help(wii_rt)`
"wii_rt_tidy"



#' Data on superheros
#' `heroes_meta` and `heroes_personal` are datasets intended to teach combining datasets.
#' @source \url{https://www.kaggle.com/claudiodavi/superhero-set/version/1}
"heroes_meta"

#' Data on superheros
#' `heroes_meta` and `heroes_personal` are datasets intended to teach combining datasets.
#' @source \url{https://www.kaggle.com/claudiodavi/superhero-set/version/1}
"heroes_personal"

#' Untidy (simulated) experimental data
#' @format A data frame with 2 columns:
#' \describe{
#'   \item{condition}{An untidy variable combining participant number, condition (A/B) and time (1:3)}
#'   \item{rt}{Reaction time}
#' }
"messy_exp"




#' Data from Holmgren et al 2018
#' @source \url{https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0203263}
"holmgren2018"



#' Data from Egger et al 2019
#' @source \url{https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6402646/}
"egger2019"


#' Summary data from Im 2018
#' @source \url{https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5798820/}
"im2018"

#' Data from Kühberger, Fritz, and Scherndl, 2014.
#'
#' Converted to R factors from SPSS labelled data
#' @source \url{https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4156299/}
"kuhberger2014"


#' Summary data from Im 2018
#'
#' Teychenne and Hinkley (2016) used regression to investigate the association between anxiety and daily hours of screen time (e.g., TV, computer, or device use) in 528 mothers with young children.
#' Some variable names have been changed from the original source for clarity.
#' #' \describe{
#'   \item{id}{Study id}
#'   \item{age}{Age in years}
#'   \item{anxiety_score}{Anxiety score}
#'   \item{screen_time}{Time spent on screens in hours}
#'   \item{physical_activity}{Time spent physical activity in hours}
#'   \item{tv}{TV use in hours}
#'   \item{computer}{Computer use in hours}
#'   \item{bmi}{Body mass index}
#'   \item{education}{Education}
#'   \item{marital_status}{Marital_status}
#'   \item{disability_health}{Disability_health}
#' }
#'
#' @source \url{https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4871535/}
#' @source \url{#' https://dro.deakin.edu.au/view/DU:30083409}
"mentalh"




#' Simulated data on academic achievement and time spent gaming
"amongus"


.onLoad <- function(libname, pkgname){
  packageStartupMessage("Loading datasets for teaching R to psychology students.")

  packageStartupMessage("\nDatasets loaded:")
  ds <- data(package='psydata')
  packageStartupMessage(
    paste(as.data.frame(ds$results)$Item, collapse=", ")
  )

  packageStartupMessage("\n\nType help(datasetname) for more information about the data.")

}
