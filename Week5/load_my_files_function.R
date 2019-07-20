
#' basic load_all style function for those writing a package without package structure.
#'
#' @param dir (make sure it has a "/" in it)
#'
#' @return
#' @export
#'
#' @examples
load_my_files <- function(dir = "./") {
  R_files <- list.files(paste0(dir,"R/"))
  
  for (r_file in R_files){
    source(paste0("R/", r_file))
  }
}