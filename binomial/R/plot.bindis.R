#' @export

plot.bindis <- function(x, ...) {
  barplot(x$probability, names.arg = x$success, xlab = "successes", ylab = "probability")
}



