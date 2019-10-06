`%||%` <- function(x, y) if (is.null(x)) y else x

v_char <- function(x, .f, ...) {
  vapply(x, .f, ..., FUN.VALUE = character(1), USE.NAMES = FALSE)
}

pv_char <- function(.f, ...) {
  z <- mapply(.f, ..., SIMPLIFY = FALSE, USE.NAMES = FALSE)
  v_char(z, paste)
}
