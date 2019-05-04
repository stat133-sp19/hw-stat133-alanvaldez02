#' @title bin_choose
#' @description calculates the number of combinations in which k success can occur in n trials
#' @param n number of trials
#' @param k number of successes
#' @return number of combinations
#' @export

bin_choose <- function(n, k) {
  if (k > n) {
    stop("k cannot be greater than n")
  }
  bin_choose = factorial(n) / (factorial(k) * factorial(n - k))
  return(bin_choose)
}

