library(testthat)

# context for summary measures
context("Test for summary measures")

test_that("aux_mean works as expected", {

  expect_length(aux_mean(5, .5), 1)
  expect_is(aux_mean(5, .5), "numeric")
  expect_error(aux_mean(5))
})

test_that("aux_variance works as expected", {

  expect_length(aux_variance(5, .5), 1)
  expect_is(aux_variance(5, .5), "numeric")
  expect_error(aux_variance(5))
})

test_that("aux_mode works as expected", {

  expect_length(aux_mode(5, .5), 1)
  expect_is(aux_mode(5, .5), "numeric")
  expect_error(aux_mode(5))
})

test_that("aux_skewness works as expected", {

  expect_length(aux_skewness(5, .5), 1)
  expect_is(aux_skewness(5, .5), "numeric")
  expect_error(aux_skewness(5))
})

test_that("aux_kurtosis works as expected", {

  expect_length(aux_kurtosis(5, .5), 1)
  expect_is(aux_kurtosis(5, .5), "numeric")
  expect_error(aux_kurtosis(5))
})
