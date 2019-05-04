#' @title bin_probability
#' @description calculates the probability about the number of successes in a fixed number of random trials
#' @param success number of successes
#' @param trials number of trials
#' @param prob probablity
#' @return probability
#' @export

bin_probability <- function(success, trials, prob) {
  if (check_trials(trials) != TRUE) {
    stop("invalid trials value")
  }
  if (check_prob(prob) != TRUE) {
    stop("invalid prob value")
  }
  if (check_success(success, trials) != TRUE) {
    stop("invalid success value")
  }
  bin_probability <- bin_choose(trials, success) * prob^success * (1 - prob)^(trials-success)
  return(bin_probability)
}
