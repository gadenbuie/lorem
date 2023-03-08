
#' @importFrom knitr knit_print
#' @export
knit_print.lorem <- function(x, ...) {
  x <- paste(x, collapse = "\n\n")
  knitr::asis_output(x)
}
