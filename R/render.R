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

#' Render placeholder text as HTML tags
#'
#' Renders [lorem::ipsum()] placeholder text as HTML tags using
#' [htmltools::as.tags()]. By default, paragraphs are rendering `<p>` tags with
#' [htmltools::p()], but you may provide your own paragraph `wrapper` function.
#' In general, you won't need to manually call this function, instead you can
#' just drop [lorem::ipsum()] text into another [htmltools::tag()].
#'
#' @name as.tags.lorem
#' @rdname as.tags.lorem
#'
#' @examples
#' htmltools::div(
#'   lorem::ipsum(paragraphs = 3)
#' )
#'
#' htmltools::tags$ul(
#'   htmltools::as.tags(
#'     lorem::ipsum(paragraphs = 3, sentences = 1),
#'     wrapper = htmltools::tags$li
#'   )
#' )
#'
#' @inheritParams htmltools::as.tags
#' @param wrapper A function that takes a character string of a paragraph or
#'   chunk of placeholder text and returns an [htmltools::tag()]. By default,
#'   lorem ipsum text is wrapped in [htmltools::p()].
#'
#' @return Returns an [htmltools::tagList()].
#'
#' @importFrom htmltools as.tags
#' @export
as.tags.lorem <- function(x, wrapper = NULL, ...) {
  if (is.null(wrapper)) {
    wrapper <- function(x, ...) htmltools::p(x, .noWS = "inside")
  }
  htmltools::tagList(lapply(x, wrapper, ...))
}
