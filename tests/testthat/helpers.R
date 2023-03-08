expect_n_sentences <- function(x, n) {
  sentences <- strsplit(x, " ")
  for (i in seq_along(sentences)) {
    words <- sentences[[i]]
    n_sentences <- sum(grepl("[.!?]", words))
    n_expected <- as.integer(n[[i]])
    expect_equal(n_sentences, n_expected)
  }
  invisible(x)
}
