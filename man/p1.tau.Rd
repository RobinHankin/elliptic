\name{p1.tau}
\alias{p1.tau}
\title{Does the Right Thing (tm) when calling g2.fun() and g3.fun()}
\description{
  Takes vectors and
  interprets them appropriately for input to \code{g2.fun()} and
  \code{g3.fun()}.  Not really intended for the end user.
}
\usage{
p1.tau(b)
}
\arguments{
  \item{b}{Vector of periods}
}
\details{
  If \code{b} is of length two, interpret the elements as
  \eqn{\omega_1}{omega1} and \eqn{\omega_2}{omega2} respectively.

  If a two-column matrix, interpret the columns as
  \eqn{\omega_1}{omega1} and \eqn{\omega_2}{omega2} respectively.

  Otherwise, interpret as a vector of
  \eqn{\tau=\omega_1/\omega_2}{tau=omega1/omega2}.
}
\value{
  Returns a two-component list:
  \item{p1}{First period}
  \item{tau}{Period ratio}
}
\author{Robin K. S. Hankin}
\examples{
 p1.tau(c(1+1i,1.1+23.123i))
}
\keyword{math}
