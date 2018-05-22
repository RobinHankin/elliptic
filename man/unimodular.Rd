\name{unimodular}
\alias{unimodular}
\alias{unimodularity}
\title{Unimodular matrices}
\description{
Systematically generates unimodular matrices; numerical verfication of a
function's unimodularness
}
\usage{
unimodular(n)
unimodularity(n,o, FUN, ...)
}
\arguments{
  \item{n}{Maximum size of entries of matrices}
  \item{o}{Two element vector}
  \item{FUN}{Function whose unimodularity is to be checked}
  \item{...}{Further arguments passed to \code{FUN}}
}
\details{
  Here, a \sQuote{unimodular} matrix is of size \eqn{2\times 2}{2x2},
  with integer entries and a determinant of unity.
}
\value{
  Function \code{unimodular()} returns an array \code{a} of dimension
  \code{c(2,2,u)} (where \code{u} is a complicated function of \code{n}).
  Thus 3-slices of \code{a} (that is, \code{a[,,i]}) are unimodular.

  Function \code{unimodularity()} returns the result of applying
  \code{FUN()} to the unimodular transformations of \code{o}.  The
  function returns a vector of length \code{dim(unimodular(n))[3]}; if
  \code{FUN()} is unimodular and roundoff is neglected, all elements of
  the vector should be identical.
}
\author{Robin K. S. Hankin}
\note{In function \code{as.primitive()}, a \sQuote{unimodular} may have
  determinant minus one.
}
\seealso{\code{\link{as.primitive}}}
\examples{
unimodular(3)

o <- c(1,1i)
plot(abs(unimodularity(3,o,FUN=g2.fun,maxiter=100)-g2.fun(o)))


}
\keyword{array}
