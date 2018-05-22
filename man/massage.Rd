\name{massage}
\alias{massage}
\title{Massages numbers near the real line to be real}
\description{
Returns the Real part of numbers near the real line
}
\usage{
massage(z, tol = 1e-10)
}
\arguments{
  \item{z}{vector of complex numbers to be massaged}
  \item{tol}{Tolerance}
}
\author{Robin K. S. Hankin}
\examples{
massage(1+1i)
massage(1+1e-11i)

massage(c(1,1+1e-11i,1+10i))
}
\keyword{math}
