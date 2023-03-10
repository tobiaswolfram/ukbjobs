

#' Add occupational status measures
#'
#' Adds common occupational status measures (CAMSIS, SIOPS and ISEI) to the UKB data.
#'
#' @param ukb_data A data frame containing UK Biobank data.
#' @param soc2000_var A character string indicating the column in `ukb_data` that contains the SOC2000 codes (i.e. `job_code_at_visit_f20277_0_0`).
#' @param sex_var string, denoting the UKB-variable that codes for sex (i.e. `sex_f31_0_0`) with values being either "Male" or "Female"
#'
#' @details A simple function that adds three well known measures of occupational status from the social stratification
#' literature to the UKB, based on the occupational information encoded in `soc2000_var`.
#'
#' The International Socioeconomic Index  (ISEI, Ganzeboom et al. 1992) is a measure of status that is based on the scaling weights that maximize the (indirect) influence of
#' education on income through occupation. The ISEI takes into account a person's education, occupation, and income, and assigns
#' a numeric value to each person that represents their status.
#'
#' The Standard International Occupational Prestige Scale (SIOPS, Treiman 1977) is a metric used to measure the relative social standing of occupations.
#' It is based on public opinion surveys in which representative samples of the population are tasked with ranking occupations by their relative
#' social standing.
#'
#' The Cambridge Social Interaction and Stratification (CAMSIS, Lambert & Griffiths 2018) scale is based on the idea that differential association is an essential feature
#' of social stratification arrangements. The usual approach to stratification theory is to define a structure composed of a set of classes or
#' status groups and then to investigate social interaction between them. The CAMSIS approach reverses this, using patterns of interaction to determine
#' the nature of the structure. Separate male and female CAMSIS scales exist, the function uses either the male or female scale depending on `sex_var` for each individual
#' followig the recommendations of the CAMSIS team.
#'
#' CAMSIS values are taken from http://www.camsis.stir.ac.uk/, SIOPS and ISEI are adapted from http://www.harryganzeboom.nl/isco88/ and converted from the
#' ISCO88-scale to SOC2000 using the mapping found at http://www.camsis.stir.ac.uk/occunits/uksoc2000toisco88v3.sps. Note that ISEI and SIOPS scores
#' for military personnel (SOC2000 1171 and 3311) as well as Public service administrative professionals (SOC2000 2441) are not available.
#'
#'
#' Ganzeboom, Harry B. G./Donald, Treiman (1996), »Internationally Comparable Measures for Occupational Status for the 1988 International Standard Classification of Occupations«, Social Science Research 25, S. 201–239
#'
#' Ganzeboom, H.B.G. De Graaf, P.M. & Treiman, D.J. (1992): A Standard International Socio-Economic Index of Occupational Status. Social Science Research 21 (1), 1–56.
#'
#' Lambert, P. S., & Griffiths, D. (2018). Social Inequalities and Occupational Stratification: Methods and Concepts in the Analysis of Social Distance
#'
#' Treiman, Donald (1977), Occupational Prestige in Comparative Perspective, New York.
#'
#' @return ukb_data, with CAMSIS, SIOPS and ISEI added.
#' @export
add_occ_status <- function(ukb_data, soc2000_var, sex_var){

  if (!soc2000_var %in% names(ukb_data)) {
    stop("Error: The specified soc2000_var does not exist in the ukb_data")
  }

  if (!sex_var %in% names(ukb_data)) {
    stop("Error: The specified sex_var does not exist in the ukb_data")
  }

  data("soc2000_occ_status", envir=environment())

  merged <- merge(ukb_data, soc2000_occ_status, by.y= "soc2000", by.x = soc2000_var, all.x = TRUE)

  merged$camsis <- ifelse(merged[[sex_var]] == "Male", merged$mcamsis, merged$fcamsis)
  merged$camsis <- ifelse(is.na(merged[[sex_var]]), NA, merged$camsis)

  merged$mcamsis <- NULL
  merged$fcamsis <- NULL

  cat(paste0(nrow(merged) - sum(is.na(merged$camsis)), " cases in ukb_data were successfully matched and updated."))

  merged
}


#' Add ISCO-88 occupation codes
#'
#' Matches SOC2000 codes to ISCO-88, the 1988 version of the International Standard Classification of Occupations.
#'
#' @param ukb_data A data frame containing UK Biobank data.
#' @param soc2000_var A character string indicating the column in `ukb_data` that contains the SOC2000 codes (i.e. `job_code_at_visit_f20277_0_0`).
#'
#' @details ISCO-88 is a standardized classification of occupations used internationally.
#' It provides a comprehensive and systematic way of classifying different jobs.
#' The ISCO-88 classification has four levels, ranging from the most general to the most specific and
#' its codes are widely used in social sciences, organizational psychology and human resource management.
#' By matching SOC2000 codes to ISCO-88, this function allows the researcher to link the UKB to
#' data with the internationally most common standardized occupation classification system.
#' The mapping is based on the .sps-file provided at http://www.camsis.stir.ac.uk/occunits/uksoc2000toisco88v3.sps.
#'
#' @return A data frame with the UK Biobank data merged with the ISCO-88 occupation, based on the SOC2000 codes.
#' @export
add_isco88 <- function(ukb_data, soc2000_var){

  if (!soc2000_var %in% names(ukb_data)) {
    stop("Error: The specified soc2000_var does not exist in the ukb_data")
  }

  data("soc2000_isco88" , envir=environment())

  merge(ukb_data, soc2000_occ_status, by.y= "soc2000", by.x = soc2000_var, all.x = TRUE)

}



