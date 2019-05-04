# check success function

check_success <- function(success, trials) {
  if (length(success) < 0 | !is.numeric(success)) {
    stop("success must be a vector of integer number(s)")
  }
  if (success < 0) {
    stop("success must be a non-negative integer(s)")
  }
  if (success %% 1 != 0) {
    stop("success must be an integer number(s)")
  }
  if (success > trials) {
    stop("success must be less than or equal to trials")
  }
  TRUE
}
