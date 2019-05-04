# check trials function

check_trials <- function(trials) {
  if (length(trials) != 1 | !is.numeric(trials)) {
    stop("trials must be a numeric value of length 1")
  }
  if (trials <= 0) {
    stop("trials must be a non-negative integer")
  }
  if (trials %% 1 != 0) {
    stop("trials must be an integer number")
  }
  TRUE
}
