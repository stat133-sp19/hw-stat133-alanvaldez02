library(testthat)

# context for checkers
context("Test for checkers")

test_that("check_prob works as expected", {

  expect_true(check_prob(.5))
  expect_error(check_prob(1.5))
  expect_length(check_prob(.5), 1)
})

test_that("check_trials works as expected", {

  expect_true(check_trials(5))
  expect_error(check_trials(0))
  expect_length(check_trials(5), 1)
})

test_that("check_success works as expected", {

  expect_true(check_success(4, 5))
  expect_error(check_success(5, 4))
  expect_length(check_success(4, 5), 1)
})




