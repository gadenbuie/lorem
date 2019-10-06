
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

> Sit nunc at convallis fringilla semper\! Penatibus vivamus eget
> malesuada cursus fames magnis potenti. Venenatis ligula enim conubia
> laoreet orci class ligula? Massa sem sed enim risus ut mattis inceptos
> nisl elementum mattis. Nostra ultricies habitant donec vitae luctus
> proin gravida placerat ac libero imperdiet. Auctor habitasse faucibus
> ultricies purus eget sociis ultrices habitasse nec ad aptent lectus
> rutrum proin potenti montes sodales posuere convallis tempor erat
> egestas magna lectus sociis mollis purus.
> 
> Dolor turpis euismod himenaeos interdum felis dictum tempus euismod
> tortor aliquam? Eget interdum vehicula laoreet quam. Mollis justo
> cursus ad blandit feugiat pulvinar sem sodales bibendum. Leo leo magna
> pulvinar metus lacinia nam fringilla maecenas duis dis suscipit aenean
> natoque sem metus quam risus sagittis convallis primis sociis id
> dictumst.

You can control the number of `paragraphs` and `sentences` per
paragraph.

``` markdown
`r lorem::ipsum(paragraphs = 3, sentences = c(1, 2, 3))`
```

> Sit elementum felis etiam dictum vel lacus lobortis justo aptent proin
> pellentesque.
> 
> Sit orci luctus fringilla torquent pharetra taciti lectus viverra
> suscipit pellentesque. Sociosqu pharetra montes aptent parturient
> dapibus duis?
> 
> Consectetur egestas netus ultrices dictumst pharetra eleifend a. Sem
> platea rhoncus erat ac consequat. Curabitur vivamus sed porttitor
> dictumst interdum praesent quam nostra vivamus.

You can also adjust the `avg_words_per_sentence` to create long or short
paragraphs.

``` markdown
`r lorem::ipsum(2, avg_words_per_sentence = 3)`
```

> Lorem semper diam. Natoque cras primis. At ac neque primis? Dui
> scelerisque massa inceptos? Na inceptos?
> 
> Adipiscing massa netus cursus vivamus est aliquam mauris pharetra
> nostra.

``` markdown
`r lorem::ipsum(1, avg_words_per_sentence = 20)`
```

> Consectetur libero vitae etiam tristique commodo iaculis erat mattis
> tempor convallis porta? Aenean natoque feugiat himenaeos ac accumsan
> mollis torquent in ut maecenas congue vulputate nulla interdum fames
> conubia nibh interdum interdum habitasse pellentesque est nec conubia
> penatibus leo ornare duis cubilia elementum.

### Everywhere Else

Generate *lorem ipsum* anywhere else using `lorem::ipsum()` or
`lorem::ipsum_words()`.

``` r
ipsum_items <- replicate(5, lorem::ipsum_words(5))
cat(paste("-", ipsum_items), sep = "\n")
```

  - magnis maecenas felis per egestas
  - erat gravida gravida lacus interdum
  - ad vulputate ante tristique parturient
  - augue ultricies nisi vehicula et
  - urna venenatis facilisi felis mattis

## Ipsum gratiam

Thank you to [Luke Haas](https://getlorem.com) for the node module
[getlorem](https://github.com/lukehaas/getlorem) and for providing the
lorem ipsum word list used in this package.
