#' @export
format.lorem <- function(x, ...) {
  paste(unlist(x), collapse = "\n\n")
}

#' @export
print.lorem <- function(x, ...) {
  text <- strwrap(format(x))
  cat("<lorem>\n", paste(text, collapse = "\n"), sep = "")
  invisible(x)
}

#' @importFrom knitr knit_print
#' @export
knit_print.lorem <- function(x, ...) {
  knitr::asis_output(format(x))
}

#' @importFrom htmltools as.tags
#' @export
as.tags.lorem <- function(x, ...) {
  htmltools::tagList(
    lapply(x, htmltools::p, .noWS = "inside")
  )
}
