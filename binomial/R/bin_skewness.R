#' @title bin_skewness
#' @description calculates the skewness of a binomial distribution
#' @param trials number of trials
#' @param prob probability
#' @return skewness
#' @export

bin_skewness <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  bin_skewness = aux_skewness(trials, prob)
  return(bin_skewness)
}
