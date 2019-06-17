#' Correlation matrix of numeric variables
#'
#' This function returns a correlation matrix of all numeric variables in the nba_data
#' @param yearinput
#' @keywords correlation,nba
#' @export
#' @examples
#' cor_nba(1952)

cor_nba <- function(x){
  nba_numeric <- purrr::keep(nba_data, is.numeric)
  nba_num_year <- dplyr::filter(nba_numeric, Year==x)
  corred_nba <- cor(nba_num_year, na.rm=TRUE)
  #Please note: not all types of stats are available for all years, correlation
  #matrices for certain years will contain a high number of missing values.
  return(corred_nba)
}
