<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

# lorem 1.0.0

The first official release of **lorem** on CRAN! A few small changes have happened in the package since it was first released on GitHub:

- `lorem::ipsum()` now returns a `lorem` classed object that works in both knitr R chunks and htmltools tags. In htmltools, each paragraph is automatically wrapped in a `<p>` tag, or you can call `as.tags()` directly to provide your own `wrapper`. This change required `ipsum()` to return a list-like `lorem` class rather than a character vector; use `format()` or `as.character()` to retrieve standard character vectors (#8).

- `lorem::ipsum()` now includes punctuation like commas, colons, semi-colons and em dashes in the generated text (#4).
