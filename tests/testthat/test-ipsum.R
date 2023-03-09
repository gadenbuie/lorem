test_that("lorem::ipsum() produces lorem characters", {
  x <- lorem::ipsum()
  expect_s3_class(x, "lorem")
})

test_that("lorem::ipsum() 1-sentence paragraphs", {
  withr::with_seed(
    seed = 42,
    expect_snapshot(lorem::ipsum(paragraphs = 1, sentences = 1))
  )
  p1 <- lorem::ipsum(1, 1)
  expect_length(p1, 1)
  expect_n_sentences(p1, 1)

  withr::with_seed(
    seed = 42,
    expect_snapshot(lorem::ipsum(paragraphs = 2, sentences = 1))
  )
  p2 <- lorem::ipsum(2, 1)
  expect_length(p2, 2)
  expect_n_sentences(p2, c(1, 1))

  withr::with_seed(
    seed = 42,
    expect_snapshot(lorem::ipsum(paragraphs = 3, sentences = 1))
  )
  p3 <- lorem::ipsum(3, 1)
  expect_length(p3, 3)
  expect_n_sentences(p3, c(1, 1, 1))
})

test_that("lorem::ipsum() n-sentence paragraphs", {
  withr::local_seed(42)

  expect_n_sentences(lorem::ipsum(1, 1), 1L)
  expect_n_sentences(lorem::ipsum(1, 2), 2L)
  expect_n_sentences(lorem::ipsum(1, 3), 3L)
  expect_n_sentences(lorem::ipsum(1, 10), 10L)
})

test_that("lorem::ispum() catches bad `paragraph` input", {
  expect_error(ipsum(-1))
  expect_error(ipsum(1:2))
  expect_error(ipsum(1.5))
  expect_error(ipsum(Inf))
  expect_error(ipsum(NA))
})

test_that("lorem::ispum() catches bad `sentences` input", {
  expect_error(ipsum(1, -1))
  expect_error(ipsum(1, 1:2))
  expect_error(ipsum(1, 1.5))
  expect_error(ipsum(2, c(1, 1.5)))
  expect_error(ipsum(2, c(1, Inf)))
  expect_error(ipsum(2, c(1, -1)))
  expect_error(ipsum(2, c(1, NA)))
})

test_that("lorem::ipsum() warns about bad punctuation valence", {
  withr::with_options(
    list(lorem.punctuation_valence = 100),
    expect_warning(ipsum())
  )
})

test_that("get_punctuation_valence()", {
  withr::with_options(
    list(lorem.punctuation_valence = 0.8),
    expect_equal(get_punctuation_valence(), 0.8)
  )

  withr::with_options(
    list(lorem.punctuation_valence = FALSE),
    expect_false(get_punctuation_valence())
  )

  withr::with_options(
    list(lorem.punctuation_valence = TRUE),
    expect_equal(get_punctuation_valence(), 0.4)
  )

  withr::with_options(
    list(lorem.punctuation_valence = 100),
    expect_warning(expect_equal(get_punctuation_valence(warn = TRUE), 0.4))
  )
})
