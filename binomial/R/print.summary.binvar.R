#' @export

print.summary.binvar <- function(x, ...) {
  cat("Summary Binomial\n\n",
      "Parameters\n",
      "- number of trials:", x$trials, "\n",
      "- prob of success:", x$prob, "\n\n",
      "Measures\n",
      "- mean :", x$mean, "\n",
      "- variance:", x$variance, "\n",
      "- mode:", x$mode, "\n",
      "- skewness:", x$skewness, "\n",
      "- kurtosis:", x$kurtosis, "\n"
      )
}
