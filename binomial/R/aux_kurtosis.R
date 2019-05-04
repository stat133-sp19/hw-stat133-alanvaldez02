#aux_kurtosis function

aux_kurtosis <- function(trials, prob) {
  aux_kurtosis = (1 - 6 * prob * (1 - prob)) / (trials * prob * (1 - prob))
  return(aux_kurtosis)
}
