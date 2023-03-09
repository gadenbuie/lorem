expect_n_sentences <- function(lorem, n) {
  x <- format(lorem)
  paras <- unlist(strsplit(x, "\n\n"))
  sentences <- strsplit(paras, " ")

  for (i in seq_along(sentences)) {
    words <- sentences[[i]]
    n_sentences <- sum(grepl("[.!?]", words))
    n_expected <- as.integer(n[[i]])
    expect_equal(n_sentences, n_expected)
  }

  invisible(lorem)
}
