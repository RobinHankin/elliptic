\name{sqrti}
\alias{sqrti}
\title{Generalized square root}
\description{
Square root wrapper that keeps answer real if possible, coerces to
complex if not.
}
\usage{
sqrti(x)
}
\arguments{
  \item{x}{Vector to return square root of}
}
\author{Robin K. S. Hankin}
\examples{
sqrti(1:10)  #real
sqrti(-10:10) #coerced to complex (compare sqrt(-10:10))
sqrti(1i+1:10) #complex anyway
}
\keyword{math}
