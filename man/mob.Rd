\name{mob}
\alias{mob}
\alias{\%mob\%}
\title{Moebius transformations}
\description{
Moebius transformations
}
\usage{
mob(M, x)
M \%mob\% x
}
\arguments{
  \item{M}{2-by-2 matrix of integers}
  \item{x}{vector of values to be transformed}
}
\value{
  Returns a value with the same attributes as \code{x}.  Elementwise, if

  \deqn{M=\left(\begin{array}{cc}a&b\\c&d\end{array}\right)}{omitted:
    see PDF}

  then \code{mob(M,x)} is \eqn{\frac{ax+b}{cx+d}}{(ax+b)/(cx+d)}.
  
}
\references{
  Wikipedia contributors, "Mobius transformation," Wikipedia, The Free
  Encyclopedia (accessed February 13, 2011). 
  }
\author{Robin K. S. Hankin}
\note{This function does not check for \code{M} being having integer
  elements, nor for the determinant being unity.
}
\seealso{\code{\link{unimodular}}}
\examples{
M <- matrix(c(11,6,9,5),2,2)
x <- seq(from=1+1i,to=10-2i,len=6)

M \%mob\% x
plot(mob(M,x))
}
\keyword{math}
