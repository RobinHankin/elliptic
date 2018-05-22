\name{amn}
\alias{amn}
\alias{18.5.7}
\alias{18.5.8}
\title{matrix a on page 637}
\description{
Matrix of coefficients of the Taylor series for
\eqn{\sigma(z)}{sigma(z)} as described on page 636 and tabulated on page
637. 
}
\usage{
amn(u)
}
\arguments{
  \item{u}{Integer specifying size of output matrix}
}
\details{
  Reproduces the coefficients \eqn{a_{mn}}{a_mn} on page 637 according to
  recurrence formulae 18.5.7 and 18.5.8, p636.  Used in equation
  18.5.6. 
  }  
\author{Robin K. S. Hankin}
\examples{
amn(12)   #page 637
}
\keyword{math}
