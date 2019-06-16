
cor_nba <- function(x){
  nba_numeric <- purrr::keep(nba_data, is.numeric)
  nba_num_year <- dplyr::filter(nba_numeric, Year==x)
  corred_nba <- cor(nba_num_year, na.rm=TRUE)
  #Please note: not all types of stats are available for all years, correlation
  #matrices for certain years will contain a high number of missing values.
  return(corred_nba)
}
