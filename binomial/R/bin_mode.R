#' @title bin_mode
#' @description calculates the mode of a binomial distribution
#' @param trials number of trials
#' @param prob probability
#' @return mode
#' @export

bin_mode <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  bin_mode = aux_mode(trials, prob)
  return(bin_mode)
}
