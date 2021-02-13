library(testthat)
library(noaar)
library(magrittr)


NOAA_data <- NOAA_data %>%
  eq_clean_data() %>%
  eq_location_clean()

test_that("The data preparation process has been successful", {
  expect_true(class(NOAA_data$Date) == "Date")
  expect_true(class(NOAA_data$Longitude) == "numeric")
  expect_true(class(NOAA_data$Latitude) == "numeric")
})

