\name{theta1.dash.zero}
\alias{theta1.dash.zero}
\alias{theta1.dash.zero.q}
\alias{e16.28.6}
\title{Derivative of theta1}
\description{
  Calculates \eqn{\theta_1'}{theta1'} as a function of either \eqn{m}
  or \eqn{k}
}
\usage{
theta1.dash.zero(m, ...)
theta1.dash.zero.q(q, ...)
}

\arguments{
  \item{m}{real parameter}
  \item{q}{Real parameter}
  \item{...}{Extra arguments passed to \code{theta1()} et seq, notably
    \code{maxiter}}
}
\author{Robin K. S. Hankin}
\examples{
#Now, try and get 16.28.6, p576: theta1dash=theta2*theta3*theta4:

m <- 0.5
derivative <- function(small){(theta1(small,m=m)-theta1(0,m=m))/small}
right.hand.side <-  theta2(0,m=m)*theta3(0,m=m)*theta4(0,m=m)
derivative(1e-7)-right.hand.side

}
\keyword{math}
