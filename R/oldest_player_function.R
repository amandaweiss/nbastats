#' Oldest player in NBA data
#'
#' This function returns the oldest player in the NBA data in a given year
#' @param yearinput
#' @keywords oldest,player
#' @export
#' @examples
#' oldest_player(1952)

oldest_player <- function(x){

  nba_year <- dplyr::filter(nba_data, Year==x)

  arranged_nba_year <- dplyr::arrange(nba_year, Player)

  max_age <- dplyr::filter(arranged_nba_year, Age==max(Age))

  max_age[1,2]

}
