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
