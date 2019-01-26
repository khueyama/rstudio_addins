#' Toggle RStudio Theme between Dark and Light
#'
#' @description This RStudio Addin switches between Dark and Light
#' @export
switch_theme <- function() {
  if (rstudioapi::versionInfo()$version < "1.2.879") {
    rstudioapi::showDialog("Error", 
                           "This function requires RStudio v1.2.879 or higher.")
  } else {
    current_theme <- rstudioapi::getThemeInfo()
    next_theme <- ifelse(current_theme$dark, "Chrome", "Idle Fingers")
    rstudioapi::applyTheme(next_theme) 
  }

}