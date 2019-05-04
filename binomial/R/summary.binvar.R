#' @export

summary.binvar <- function(x, ...) {
  obj <- list(
    "trials" = x$trials,
    "prob" = x$prob,
    "mean" = aux_mean(x$trials, x$prob),
    "variance" = aux_variance(x$trials, x$prob),
    "mode" = aux_mode(x$trials, x$prob),
    "skewness" = aux_skewness(x$trials, x$prob),
    "kurtosis" = aux_kurtosis(x$trials, x$prob)
  )
  class(obj) <- "summary.binvar"
  obj
}
