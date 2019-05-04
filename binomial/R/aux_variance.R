# aux_variance function

aux_variance <- function(trials, prob) {
  aux_variance = trials * prob * (1 - prob)
  return(aux_variance)
}

