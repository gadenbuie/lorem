ipsum_addin <- function() {
  if (!requireNamespace("rstudioapi", quietly = TRUE)) {
    stop("{rstudioapi} is required for ipsum_addin()")
  } else if (!rstudioapi::hasFun("showPrompt")) {
    stop("Did you call ipsum_addin() in RStudio?")
  }

  ctx <- rstudioapi::getSourceEditorContext()

  paras <- rstudioapi::showPrompt("lorem::ipsum", "Number of Paragraphs", 1)
  paras <- as.integer(paras)

  sents <- rstudioapi::showPrompt(
    title = "lorem::ipsum",
    message = paste(
      "Number of Sentences",
      if (paras > 1) paste(
        "Each\nMultiple values can be separated by commas:",
        paste(seq_len(min(c(6, paras))), collapse = ","),
        if (paras > 6) "..."
      )
    ),
    default = 4)
  sents <- strsplit(sents, "\\s*,\\s*")[[1]]

  ipsum_text <- ipsum(paras, as.integer(sents))

  ipsum_text <- paste(ipsum_text, collapse = "\n\n")

  rstudioapi::insertText(ctx$selection[[1]]$range, ipsum_text, id = ctx$id)

  invisible(ipsum_text)
}
