\name{theta1dash}
\alias{theta1dash}
\alias{theta1dashdash}
\alias{theta1dashdashdash}
\title{Derivatives of theta functions}
\description{
First, second, and third derivatives of the theta functions
}
\usage{
theta1dash(z, ignore = NULL, m = NULL, q = NULL, give.n = FALSE,
       maxiter= 30, miniter=3)
theta1dashdash(z, ignore = NULL, m = NULL, q = NULL, give.n = FALSE,
       maxiter = 30,miniter=3)
theta1dashdashdash(z, ignore = NULL, m = NULL, q = NULL,
       give.n = FALSE, maxiter = 30,miniter=3)
}
\arguments{
  \item{z}{Primary complex argument}
  \item{ignore}{Dummy argument to force the user to name the next
    argument either \code{m} or \code{q}}
  \item{m}{m as documented in \code{theta1()}}
  \item{q}{q as documented in \code{theta1()}}
    \item{give.n}{Boolean with default \code{FALSE} meaning to return the
    function evaluation, and \code{TRUE} meaning to return a two element
    list, with first element the function evaluation, and second element
    the number of iterations used}
  \item{maxiter}{Maximum number of iterations}
  \item{miniter}{Minimum number of iterations to guard against premature
    exit if an addend is zero exactly}
}
\details{
  Uses direct expansion as for \code{theta1()} et seq
}
\references{
   M. Abramowitz and I. A. Stegun 1965. \emph{Handbook of Mathematical
     Functions.}  New York, Dover
   }
\author{Robin K. S. Hankin}
\seealso{\code{\link{theta}}}
\examples{
m <- 0.3+0.31i
z <- seq(from=1,to=2+1i,len=7)
delta <- 0.001
deriv.numer <- (theta1dashdash(z=z+delta,m=m) - theta1dashdash(z=z,m=m))/delta
deriv.exact <- theta1dashdashdash(z=z+delta/2,m=m)
abs(deriv.numer-deriv.exact)

}
\keyword{math}
