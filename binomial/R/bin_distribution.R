#' @title bin_distribution
#' @description calculates the binomial distribution
#' @param trials number of trials
#' @param prob probability
#' @return binomial distribution
#' @export

bin_distribution <- function(trials, prob) {
  bin_distribution = data.frame(
    "success" = 0:trials,
    "probability" = bin_probability(0:trials, trials, prob)
  )
  class(bin_distribution) <- c("bindis", "data.frame")
  return(bin_distribution)
}

