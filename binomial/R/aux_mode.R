#aux_mode function

aux_mode <- function(trials, prob) {
  aux_mode = floor(trials * prob + prob)
  return(aux_mode)
}
