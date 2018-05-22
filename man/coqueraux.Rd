\name{coqueraux}
\alias{coqueraux}
\title{Fast, conceptually simple, iterative scheme for Weierstrass P
  functions}
\description{
  Fast, conceptually simple, iterative scheme for Weierstrass
  \eqn{\wp}{P} functions, following the ideas of Robert Coqueraux
}
\usage{
coqueraux(z, g, N = 5, use.fpp = FALSE, give = FALSE)
}
\arguments{
  \item{z}{Primary complex argument}
  \item{g}{Invariants; if an object of type \code{parameters} is supplied,
    the invariants will be extracted appropriately}
  \item{N}{Number of iterations to use}
  \item{use.fpp}{Boolean, with default \code{FALSE} meaning to \emph{not}
    reduce \code{z} to the fpp.  Setting to \code{TRUE} reduces
    \code{z} to the fpp via\code{parameters()}: this is more
    accurate (see example) but slower}
  \item{give}{Boolean, with \code{TRUE} meaning to return an estimate of
    the error, and \code{FALSE} meaning to return just the value}
}
\references{
  R. Coqueraux, 1990.  \emph{Iterative method for calculation of the
    Weierstrass elliptic function}, IMA Journal of Numerical Analysis,
  volume 10, pp119-128
}
\author{Robin K. S. Hankin}
\examples{
 z <- seq(from=1+1i,to=30-10i,len=55)
 p <- P(z,c(0,1))
 c.true <- coqueraux(z,c(0,1),use.fpp=TRUE)
 c.false <- coqueraux(z,c(0,1),use.fpp=FALSE)
 plot(1:55,abs(p-c.false))
 points(1:55,abs(p-c.true),pch=16)
 
}
\keyword{math}
