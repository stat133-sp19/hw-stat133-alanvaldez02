#' @title bin_cumulative
#' @description calculates the cumulative binomial distribution
#' @param trials number of trials
#' @param prob probability
#' @return cumulative binomial distribution
#' @export

bin_cumulative <- function(trials, prob) {
  cumulative <- rep(0, trials + 1)
  for(i in 1:trials) {
    cumulative[1] = bin_probability(0, trials, prob)
    cumulative[i + 1] = cumulative[i] + bin_probability(i, trials, prob)
  }

  bin_cumulative = data.frame(
    "success" = 0:trials,
    "probability" = bin_probability(0:trials, trials, prob),
    "cumulative" = cumulative
  )
  class(bin_cumulative) <- c("bincum", "data.frame")
  return(bin_cumulative)
}


