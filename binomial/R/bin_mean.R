#' @title bin_mean
#' @description calculates the mean of a binomial distribution
#' @param trials number of trials
#' @param prob probability
#' @return mean
#' @export

bin_mean <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  bin_mean = aux_mean(trials, prob)
  return(bin_mean)
}
