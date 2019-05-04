#' @export

print.binvar <- function(x, ...) {
  cat('"Binomial variable"\n\n',
      "Parameters\n",
      "- number of trials:", x$trials, "\n",
      "- prob of success:", x$prob
      )
}
