# check probability function

check_prob <- function(prob) {
  if (length(prob) != 1 | !is.numeric(prob)) {
    stop("prob must be a numeric value of length 1")
  }
  if (prob < 0 | prob > 1) {
    stop("prob must be a number between 0 and 1")
  }
  TRUE
}


