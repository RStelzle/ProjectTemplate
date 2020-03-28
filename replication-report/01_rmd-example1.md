RMD-Example 1
================

``` r
library(tidyverse)
```

    ## Warning: Paket 'tidyverse' wurde unter R Version 3.6.3 erstellt

    ## -- Attaching packages ------------------------------------------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.0     v purrr   0.3.3
    ## v tibble  2.1.3     v dplyr   0.8.5
    ## v tidyr   1.0.2     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.5.0

    ## Warning: Paket 'tidyr' wurde unter R Version 3.6.3 erstellt

    ## Warning: Paket 'forcats' wurde unter R Version 3.6.3 erstellt

    ## -- Conflicts ---------------------------------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
latexImg = function(latex){

    link = paste0('http://latex.codecogs.com/gif.latex?',
           gsub('\\=','%3D',URLencode(latex)))

    link = gsub("(%..)","\\U\\1",link,perl=TRUE)
    return(paste0('![](',link,')'))
} ## geklaut von https://github.com/STAT545-UBC/Discussion/issues/102#issuecomment-142482040
```

## GitHub Documents

This is an R Markdown format used for publishing markdown documents to
GitHub. When you click the **Knit** button all R code chunks are run and
a markdown file (.md) suitable for publishing to GitHub is generated.
![](http://latex.codecogs.com/gif.latex?a%20%3D%20%5Cfrac%7Bb%7D%7Bc%7D)

## Including Code

You can include R code in the document as follows:

``` r
summary(cars)
```

    ##      speed           dist       
    ##  Min.   : 4.0   Min.   :  2.00  
    ##  1st Qu.:12.0   1st Qu.: 26.00  
    ##  Median :15.0   Median : 36.00  
    ##  Mean   :15.4   Mean   : 42.98  
    ##  3rd Qu.:19.0   3rd Qu.: 56.00  
    ##  Max.   :25.0   Max.   :120.00

## Including Plots

You can also embed plots, for example:

    ## Warning: `as.tibble()` is deprecated, use `as_tibble()` (but mind the new semantics).
    ## This warning is displayed once per session.

![](01_rmd-example1_files/figure-gfm/pressure-1.png)<!-- -->

Note that the `echo = FALSE` parameter was added to the code chunk to
prevent printing of the R code that generated the plot.
