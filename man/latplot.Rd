\name{latplot}
\alias{latplot}
\title{Plots a lattice of periods on the complex plane}
\description{
  Given a pair of basic periods, plots a lattice of periods on the complex plane
}
\usage{
latplot(p, n=10, do.lines=TRUE, ...)
}
\arguments{
  \item{p}{Vector of length two with first element the first period and
    second element the second period.  Note that
    \eqn{p_1=2\omega_1}{p1=2*omega1}}
  \item{n}{Size of lattice}
  \item{do.lines}{Boolean with default \code{TRUE} meaning to show
    boundaries between adjacent period parallelograms}
  \item{...}{Extra arguments passed to
    \code{plot()}.  See examples section for working use}
}
\references{
  K. Chandrasekharan 1985. \emph{Elliptic functions},
  Springer-Verlag.
}
\author{Robin K. S. Hankin}
\examples{
p1 <- c(1,1i)
p2 <- c(2+3i,5+7i)
latplot(p1)
latplot(p2,xlim=c(-4,4),ylim=c(-4,4),n=40)

}
\keyword{math}
