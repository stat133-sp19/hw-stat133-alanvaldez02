#' @title bin_variable
#' @description displays the variables of a binomial distribution
#' @param trials number of trials
#' @param prob probability
#' @return variables
#' @export

bin_variable <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  bin_variable = list(
    "trials" = trials,
    "prob" = prob
  )
  class(bin_variable) <- "binvar"
  return(bin_variable)
}
