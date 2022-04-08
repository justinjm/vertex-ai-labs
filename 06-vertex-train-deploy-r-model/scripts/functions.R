#' Custom log message
#'
#' @param ... The message(s)
#' 
#' @keywords internal
#' @noRd
myMessage <- function(...){
  
  message(Sys.time() ,"> ", ...)
  
}