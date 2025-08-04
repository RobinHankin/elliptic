\name{as.primitive}
\alias{as.primitive}
\alias{is.primitive}
\title{Converts basic periods to a primitive pair}
\description{
Given a pair of basic periods, returns a primitive pair and (optionally)
the unimodular transformation used.
}
\usage{
as.primitive(p, n = 3, tol = 1e-05, give.answers = FALSE)
is.primitive(p, n = 3, tol = 1e-05)
}
\arguments{
  \item{p}{Two element vector containing the two basic periods}
  \item{n}{Maximum magnitude of matrix entries considered}
  \item{tol}{Numerical tolerance used to determine reality of period ratios}
  \item{give.answers}{Boolean, with \code{TRUE} meaning to return extra
    information (unimodular matrix and the magnitudes of the primitive
    periods) and default \code{FALSE} meaning to return just the
    primitive periods}
}
\details{
  Primitive periods are not unique.  This function follows
  Chandrasekharan and others (but not, of course, Abramowitz and Stegun)
  in demanding that the real part of \code{p1}, and the
  imaginary part of \code{p2}, are nonnegative.
}
\value{
  If \code{give.answers} is \code{TRUE}, return a list with components
  \item{M}{The unimodular matrix used}
  \item{p}{The pair of primitive periods}
  \item{mags}{The magnitudes of the primitive periods}
}
\references{
  K. Chandrasekharan 1985. \emph{Elliptic functions},  Springer-Verlag
  }
\author{Robin K. S. Hankin}
\note{Here, \dQuote{unimodular} includes the case of determinant minus
  one.
  }
\examples{
as.primitive(c(3+5i, 2+3i))
as.primitive(c(3+5i, 2+3i), n = 5)

##Rounding error:
is.primitive(c(1, 1i))

## Try
 is.primitive(c(1, 1.001i))

}
\keyword{array}
