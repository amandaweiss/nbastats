#' Ed Bartels' mean true shooting percentage
#'
#' This function returns Ed Bartels' mean true shooting percentage
#' @param yearinput
#' @keywords Ed Bartels,TS
#' @export
#' @examples
#' about_ed(1952)


about_ed <- function(x){

  ed_ts <- mean((dplyr::filter(nba_data, Year==x, Player=="Ed Bartels"))$`TS%`)
  return(ed_ts)

}
