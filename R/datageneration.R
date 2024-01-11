#' Linear normal data generation
#' 
#' @importFrom stats rnorm
#' @param n A numeric element or vector denoting the number of observations.
#' @param var A numeric elemnt of vector denoting the number of variables.
#' @param mean A list denoting the means of the variables.
#' @param sd A list denoting the standard deviations of the variables.
#' @returns Returns a data set containing the independent variables and the generated dependent variable, y, which is linearly generated
#' @export 
#' @examples
#' datageneration(100, 3, list(1, 2, 3), list(1, 1, 1))
datageneration <- function(n, var, mean, sd) {

  x <- matrix(NA, ncol = var, nrow = n)
  for (i in 1:var) {
    x[, i] <- rnorm(n, mean[[i]], sd[[i]])
  }

  y <- rowSums(x)

  data <- cbind(x, y)

  return(data)
}
