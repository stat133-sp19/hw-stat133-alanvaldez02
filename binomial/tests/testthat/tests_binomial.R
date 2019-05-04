library(testthat)

# context for binomial
context("Test for binomial")

test_that("bin_choose works as expected", {

  expect_length(bin_choose(5, 4), 1)
  expect_is(bin_choose(5, 4), "numeric")
  expect_error(bin_choose(4, 5))
})

test_that("bin_probability works as expected", {

  expect_length(bin_probability(4, 5, .5), 1)
  expect_is(bin_probability(4, 5, .5), "numeric")
  expect_error(bin_probability(4, 5, 1.5))
})

test_that("bin_distribution works as expected", {

  expect_is(bin_distribution(5, .5), "data.frame")
  expect_error(bin_distribution(5, 1.5))
})

test_that("bin_cumulative works as expected", {

  expect_is(bin_cumulative(5, .5), "data.frame")
  expect_error(bin_cumulative(5, 1.5))
})
