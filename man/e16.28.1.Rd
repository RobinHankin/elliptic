\name{e16.28.1}
\alias{e16.28.1}
\alias{e16.28.2}
\alias{e16.28.3}
\alias{e16.28.4}
\alias{e16.28.5}
\title{Numerical verification of equations 16.28.1 to 16.28.5}
\description{
Numerical verification of formulae 16.28.1 to 16.28.5 on p576
}
\usage{
e16.28.1(z, m, ...)
e16.28.2(z, m, ...)
e16.28.3(z, m, ...)
e16.28.4(z, m, ...)
e16.28.5(m, ...)
}

\arguments{
  \item{z}{Complex number}
  \item{m}{Parameter \eqn{m}}
  \item{...}{Extra arguments passed to \code{theta[1-4]()}}
}
\details{
Returns the left hand side minus the right hand side of each formula.
Each formula documented here is identically zero; nonzero values
are returned due to numerical errors and should be small.
}
\references{
    M. Abramowitz and I. A. Stegun 1965. \emph{Handbook of Mathematical
      Functions.}  New York, Dover.
}
\author{Robin K. S. Hankin}
\examples{
 plot(e16.28.4(z=1:6000,m=0.234))
 plot(abs(e16.28.4(z=1:6000,m=0.234+0.1i)))
}
\keyword{array}
