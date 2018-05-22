\name{fpp}
\alias{fpp}
\alias{mn}
\title{Fundamental period parallelogram}
\description{
  Reduce \eqn{z=x+iy} to a congruent value within the
  fundamental period parallelogram (FPP).  Function \code{mn()} gives
  (real, possibly noninteger) \eqn{m} and \eqn{n} such that
  \eqn{z=m\cdot p_1+n\cdot p_2}{z=m*p_1+n*p_2}.
}
\usage{
fpp(z, p, give=FALSE)
mn(z, p)
}
\arguments{
  \item{z}{Primary complex argument}
  \item{p}{Vector of length two with first element the first period and
    second element the second period.  Note that \eqn{p} is the
    period, so \eqn{p_1=2\omega_1}, where \eqn{\omega_1}{omega1} is the
    half period}
  \item{give}{Boolean, with  \code{TRUE} meaning to return M and N, and
    default \code{FALSE} meaning to return just the congruent values}
}
\details{
  Function \code{fpp()} is fully vectorized.

  Use function \code{mn()} to determine the \dQuote{coordinates} of a
  point.

  Use \code{floor(mn(z,p)) \%*\% p } to give the  complex value of
  the (unique) point in the same period parallelogram as \code{z} that
  is congruent to the origin.
}
\author{Robin K. S. Hankin}
\examples{
p <- c(1.01+1.123i, 1.1+1.43i)
mn(z=1:10,p) \%*\% p  ## should be close to 1:10

 #Now specify some periods:
 p2 <- c(1+1i,1-1i)

 #Define a sequence of complex numbers that zooms off to infinity:
 u <- seq(from=0,by=pi+1i*exp(1),len=2007)

 #and plot the sequence, modulo the periods:
 plot(fpp(z=u,p=p2))

 #and check that the resulting points are within the qpp:
polygon(c(-1,0,1,0),c(0,1,0,-1))
 

}
\keyword{math}
