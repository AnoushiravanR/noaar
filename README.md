
<!-- README.md is generated from README.Rmd. Please edit that file -->

# noaar

<!-- badges: start -->
<!-- badges: end -->

The `noaar` package has been built for cleaning and mapping NOAA’s
Significant Earthquake data.

## Installation

In order to install the `noaar` package, you must first install the
`devtools` package And the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("AnoushiravanR/noaar")
```

## Load and clean package data

For loading the `NOAA_data` you can use `noaar::NOAA_data`, then you can
call `eq_clean_data` and `eq_location_clean` to do some modifications on
a number of variables. After that the data can be used for geom
functions.

``` r
library(noaar)
library(magrittr)
#> Warning: package 'magrittr' was built under R version 4.0.3
NOAA_data <- noaar::NOAA_data
NOAA_data <- NOAA_data %>%
  eq_clean_data() %>%
  eq_location_clean()
#> Warning: 554 failed to parse.
#> Warning: Expected 2 pieces. Additional pieces discarded in 1018 rows [10, 35,
#> 44, 48, 60, 79, 94, 99, 114, 117, 122, 146, 147, 159, 176, 177, 179, 187, 198,
#> 199, ...].
#> Warning: Expected 2 pieces. Missing pieces filled with `NA` in 738 rows [8, 20,
#> 29, 34, 49, 52, 54, 55, 74, 91, 111, 116, 129, 134, 143, 149, 152, 166, 174,
#> 180, ...].
```
