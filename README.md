
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lorem::ipsum()

<!-- badges: start -->

<!-- badges: end -->

  - Quickly generate lorem ipsum placeholder text with `lorem::ipsum()`.

  - Easy to integrate in RMarkdown documents.

  - Includes an RStudio addin to insert *lorem ipsum* into the current
    document.

## Installation

``` r
# install.package("devtools")
devtools::install_github("gadenbuie/lorem")
```

## Usage

### RStudio Addin

**lorem** includes a simple addin for RStudio that adds placeholder
*lorem ipsum* text to the current source document. The addin allows you
to specify the number of desired paragraphs and sentences.

### R Markdown

The easiest way to generate *lorem ipsum* placeholder text is to call
`lorem::ipsum()` in an inline R chunk in R Markdown.

``` markdown
`r lorem::ipsum(paragraphs = 2)`
```

> Amet hac semper morbi fermentum sociosqu dictumst orci aliquet
> vulputate quam eu pretium urna. Platea venenatis vel quis pharetra
> lectus ornare maecenas tempor enim. Eget vulputate vulputate phasellus
> ultrices erat nostra id senectus ante praesent dis\! Mus ad aliquam
> nullam risus ornare elementum inceptos in dictum nam? Cubilia eu
> sodales cubilia dis id placerat cubilia sollicitudin\! Praesent
> imperdiet montes montes eget non imperdiet integer ridiculus arcu.
> Tortor magna inceptos interdum cubilia himenaeos urna tempus ad
> egestas montes.
> 
> Elit inceptos odio vitae justo cursus ultrices cubilia sociis
> bibendum.

You can control the number of `paragraphs` and `sentences` per
paragraph.

``` markdown
`r lorem::ipsum(paragraphs = 3, sentences = c(1, 2, 3))`
```

> Amet malesuada duis etiam nisl ligula cras taciti litora elementum
> libero.
> 
> Consectetur sodales aliquet sodales commodo consequat pharetra nullam
> ornare per pretium. Dictumst et laoreet aenean libero hendrerit aptent
> vitae nunc dignissim nec tellus?
> 
> Adipiscing morbi fusce urna senectus integer suspendisse lobortis urna
> consequat\! Pulvinar fringilla platea donec aenean ac iaculis accumsan
> pretium. Morbi dignissim massa nec nunc sapien nulla quisque.

You can also adjust the `avg_words_per_sentence` to create long or short
paragraphs.

``` markdown
`r lorem::ipsum(2, avg_words_per_sentence = 3)`
```

> Lorem facilisis ad facilisi. In scelerisque duis consequat. Quis
> cursus dui lectus\! At felis ac diam posuere. Na posuere.
> 
> Elit risus faucibus potenti tellus quam. Porttitor elementum ante
> fames himenaeos interdum donec\! Na donec.

``` markdown
`r lorem::ipsum(1, avg_words_per_sentence = 20)`
```

> Lorem nisl sodales massa varius tempor eu gravida pharetra iaculis.
> Cum euismod tempor vestibulum vehicula accumsan magna sociis nec donec
> ligula et etiam facilisis dictumst velit nunc leo lacus augue litora
> nisl donec ullamcorper euismod sodales cras cum.

### Everywhere Else

Generate *lorem ipsum* anywhere else using `lorem::ipsum()` or
`lorem::ipsum_words()`.

``` r
ipsum_items <- replicate(5, lorem::ipsum_words(5))
cat(paste("-", ipsum_items), sep = "\n")
```

  - pharetra euismod sollicitudin hendrerit tortor
  - erat varius nascetur habitant ultricies
  - fringilla inceptos augue lobortis leo
  - ut egestas molestie faucibus mollis
  - nunc torquent ultrices ridiculus volutpat

## Ipsum gratiam

Thank you to [Luke Haas](https://getlorem.com) for the node module
[getlorem](https://github.com/lukehaas/getlorem) and for providing the
lorem ipsum word list used in this package.
