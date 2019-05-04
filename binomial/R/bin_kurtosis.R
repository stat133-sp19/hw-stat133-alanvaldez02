#' @title bin_kurtosis
#' @description calculates the kurtosis of a binomial distribution
#' @param trials number of trials
#' @param prob probability
#' @return kurtosis
#' @export

bin_kurtosis <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  bin_kurtosis = aux_kurtosis(trials, prob)
  return(bin_kurtosis)
}
