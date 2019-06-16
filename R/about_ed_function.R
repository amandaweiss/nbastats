about_ed <- function(x){

  ed_ts <- mean((dplyr::filter(nba_data, Year==x, Player=="Ed Bartels"))$`TS%`)
  return(ed_ts)

}
