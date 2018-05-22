\name{e18.10.9}
\alias{e18.10.9}
\alias{e18.10.9a}
\alias{e18.10.9b}
\alias{e18.10.10}
\alias{e18.10.10a}
\alias{e18.10.10b}
\alias{e18.10.11}
\alias{e18.10.11a}
\alias{e18.10.11b}
\alias{e18.10.12}
\alias{e18.10.12a}
\alias{e18.10.12b}
\title{Numerical checks of equations 18.10.9-11, page 650}
\description{
Numerical checks of equations 18.10.9-11, page 650.  Function returns
LHS minus RHS.
}
\usage{
e18.10.9(parameters)
}
\arguments{
  \item{parameters}{An object of class \dQuote{parameters}}
}
\value{
Returns a complex vector of length three: \eqn{e_1},
\eqn{e_2}, \eqn{e_3}
}
\references{
  M. Abramowitz and I. A. Stegun 1965. \emph{Handbook of Mathematical
    Functions.}  New York, Dover.
}
\author{Robin K. S. Hankin}
\note{
  A good check for the three \eqn{e}'s being in the right order.
  
}
\examples{
e18.10.9(parameters(g=c(0,1)))
e18.10.9(parameters(g=c(1,0)))
}
\keyword{math}
