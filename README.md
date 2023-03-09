
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lorem::ipsum()

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/lorem)](https://CRAN.R-project.org/package=lorem)
[![lorem r-universe
badge](https://gadenbuie.r-universe.dev/badges/lorem)](https://gadenbuie.r-universe.dev/lorem)
[![R-CMD-check](https://github.com/gadenbuie/lorem/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/gadenbuie/lorem/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

- Quickly generate lorem ipsum placeholder text with `lorem::ipsum()`.

- Easy to integrate in RMarkdown documents.

- Includes an RStudio addin to insert *lorem ipsum* into the current
  document.

## Installation

You can install the latest released version of lorem from CRAN

``` r
install.packages("lorem")
```

or the current development version of lorem from GitHub or r-universe

``` r
# GitHub
# install.packages("remotes")
rmeotes::install_github("gadenbuie/lorem")

# R Universe
install.packages('lorem', repos = c('https://gadenbuie.r-universe.dev', 'https://cloud.r-project.org'))
```

## Usage

### RStudio Addin

**lorem** includes a simple addin for RStudio that adds placeholder
*lorem ipsum* text to the current source document. The addin allows you
to specify the number of desired paragraphs and sentences.

### R Markdown

Another way to generate *lorem ipsum* placeholder text is to call
`lorem::ipsum()` in an inline R chunk in R Markdown.

``` markdown
`r lorem::ipsum(paragraphs = 2)`
```

> Sit nunc at convallis fringilla semper. Penatibus vivamus eget
> malesuada cursus fames magnis potenti. Venenatis ligula enim conubia
> laoreet orci, class ligula. Massa sem sed enim risus ut mattis
> inceptos nisl elementum mattis. Nostra ultricies habitant donec vitae
> luctus proin gravida placerat ac libero imperdiet! Auctor habitasse
> faucibus ultricies purus eget sociis ultrices habitasse: nec ad aptent
> lectus rutrum proin potenti, montes, sodales, posuere convallis tempor
> erat, egestas magna lectus sociis mollis purus.
>
> Dolor turpis euismod himenaeos interdum felis dictum tempus euismod
> tortor aliquam! Eget interdum vehicula laoreet quam mollis, justo
> cursus ad blandit feugiat pulvinar? Sem sodales bibendum leo leo magna
> pulvinar metus lacinia nam. Fringilla maecenas duis dis suscipit
> aenean natoque sem metus, quam risus sagittis convallis primis sociis
> id dictumst.

You can control the number of `paragraphs` and `sentences` per
paragraph.

``` markdown
`r lorem::ipsum(paragraphs = 3, sentences = c(1, 2, 3))`
```

> Amet cras primis at ac neque primis dui scelerisque massa inceptos
> massa.
>
> Adipiscing netus cursus – vivamus est aliquam mauris pharetra: nostra
> ornare. Tristique ad consequat sagittis montes sociis, ut cursus
> tincidunt vitae sagittis netus!
>
> Adipiscing aptent libero vitae etiam tristique commodo iaculis erat
> mattis tempor convallis. Porta aenean natoque, feugiat himenaeos – ac
> accumsan mollis torquent in ut maecenas congue vulputate nulla!
> Interdum fames.

You can also adjust the `avg_words_per_sentence` to create long or short
paragraphs.

``` markdown
`r lorem::ipsum(2, avg_words_per_sentence = 3)`
```

> Elit facilisis curae pharetra quisque per? Euismod risus phasellus
> euismod velit, orci platea? Na platea.
>
> Amet posuere habitasse imperdiet. Porta tempor felis morbi. Est nam
> nisl litora viverra? Accumsan feugiat volutpat cubilia purus. Na
> purus.

``` markdown
`r lorem::ipsum(1, avg_words_per_sentence = 20)`
```

> Elit venenatis tincidunt urna sagittis integer posuere dignissim. Dui
> tellus massa nam suspendisse venenatis dui nec imperdiet donec magna
> libero elementum euismod nibh ligula conubia vitae, ad egestas dis
> himenaeos ligula urna, dui parturient lacus montes semper ultricies
> euismod non condimentum porta sem luctus porttitor platea hac
> sagittis!

### Everywhere Else

Generate *lorem ipsum* anywhere else using `lorem::ipsum()` or
`lorem::ipsum_words()`.

``` r
ipsum_items <- replicate(5, lorem::ipsum_words(5))
cat(paste("-", ipsum_items), sep = "\n")
```

- purus enim pellentesque blandit facilisis
- elementum interdum suscipit enim urna
- urna elementum nec vitae scelerisque
- scelerisque faucibus dignissim urna interdum
- curabitur porttitor dui in euismod

## Ipsum gratiam

Thank you to [Luke Haas](https://getlorem.com) for the node module
[getlorem](https://github.com/lukehaas/getlorem) and for providing the
lorem ipsum word list used in this package.
