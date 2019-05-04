#aux_skewness function

aux_skewness <- function(trials, prob) {
  aux_skewness = (1 - 2 * prob) / sqrt(trials * prob * (1 - prob))
  return(aux_skewness)
}
