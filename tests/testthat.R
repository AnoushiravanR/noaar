library(testthat)
library(noaar)
library(magrittr)

test_check("noaar")

NOAA_data <- NOAA_data %>%
  eq_clean_data() %>%
  eq_location_clean()

test_that("The data preparation process has been successful", {
  expect_true(class(NOAA_data$Date) == "Date")
  expect_true(class(NOAA_data$Longitude) == "numeric")
  expect_true(class(NOAA_data$Latitude) == "numeric")
})


test_that("Throwing error if the annot_col value in not a character strings", {
  expect_error(eq_map(NOAA_data, annot_col = Date),
  "annot_col argument needs to be a character string")
})

