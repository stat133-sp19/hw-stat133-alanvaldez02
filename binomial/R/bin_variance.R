#' @title bin_variance
#' @description calculates the variance of a binomial distribution
#' @param trials number of trials
#' @param prob probability
#' @return variance
#' @export

bin_variance <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  bin_variance = aux_variance(trials, prob)
  return(bin_variance)
}
