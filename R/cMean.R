#' Compute the Mean of a Vector
#'
#' This function uses the .C interface to call a pre-compiled `C` function to compute the mean of a vector.
#'
#' @param x A vector of values.
#' @return The mean of `x`.
#' @export
#' @useDynLib mypackage mean
cMean <- function(x) {
  x <- as.double(x)
  n <- as.integer(length(x))

  lst <- .C('mean', x, n, result = as.double(0))
  return(lst$result)
}
