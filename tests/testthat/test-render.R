test_that("as.tags.lorem() makes htmltools tags", {
  withr::local_seed(42)

  p3 <- lorem::ipsum(3, 1, 1)
  expect_s3_class(as.tags(p3), "shiny.tag.list")

  expect_snapshot(htmltools::div(p3))
  expect_snapshot(htmltools::tags$ul(as.tags(p3, htmltools::tags$li)))
})
