
oldest_player <- function(x){

  nba_year <- dplyr::filter(nba_data, Year==x)

  arranged_nba_year <- dplyr::arrange(nba_year, Player)

  max_age <- dplyr::filter(arranged_nba_year, Age==max(Age))

  max_age[1,2]

}
