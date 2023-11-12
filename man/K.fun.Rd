\name{K.fun}
\alias{K.fun}
\alias{e16.1.1}
\title{quarter period K}
\description{
  Calculates the K.fun in terms of either \eqn{m} (\code{K.fun()})
  or \eqn{k} (\code{K.fun.k()}).
}
\usage{
K.fun(m, strict=TRUE, maxiter=7, miniter=3)
}
\arguments{
  \item{m}{Real or complex parameter}
  \item{strict}{Boolean, with default \code{TRUE} meaning to return an
    error if the sequence has not converged exactly, and \code{FALSE}
    meaning to return the partial sum, and a warning}
  \item{maxiter}{Maximum number of iterations}
  \item{miniter}{Minimum number of iterations to guard against premature
    exit if an addend is zero exactly}
}
\references{
   R. Coquereaux, A. Grossman, and B. E. Lautrup. \emph{Iterative
method for calculation of the Weierstrass elliptic function}. IMA
Journal of Numerical Analysis, vol 10, pp119-128, 1990
}
\author{Robin K. S. Hankin}
\examples{
K.fun(0.09)  # AMS-55 give 1.60804862 in example 7 on page 581

# next example not run because: (i), it needs gsl; (ii) it gives a warning.
\dontrun{
K.fun(0.4,strict=F, maxiter=4) - ellint_Kcomp(sqrt(0.4))
}
}
\keyword{math}
