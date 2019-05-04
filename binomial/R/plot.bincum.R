#' @export

plot.bincum <- function(x, ...) {
  plot(x$success, x$cumulative, type = "b", xlab = "successes", ylab = "probability")
}
