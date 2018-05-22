\name{divisor}
\alias{divisor}
\alias{primes}
\alias{factorize}
\alias{mobius}
\alias{totient}
\alias{liouville}
\concept{Multiplicative functions}
\title{Number theoretic functions}
\description{
Various useful number theoretic functions
}
\usage{
divisor(n,k=1)
primes(n)
factorize(n)
mobius(n)
totient(n)
liouville(n)
}
\arguments{
  \item{n,k}{Integers}
}
\details{
  Functions \code{primes()} and \code{factorize()} cut-and-pasted from
  Bill Venables's conf.design package, version 0.0-3.  Function
  \code{primes(n)} returns a vector of all primes not exceeding
  \code{n}; function \code{factorize(n)} returns an integer vector of
  nondecreasing primes whose product is \code{n}.

  The others are multiplicative functions, defined in Hardy and
  Wright:

  Function \code{divisor()}, also written
  \eqn{\sigma_k(n)}{sigma_k(n)}, is the divisor function defined on
  p239.  This gives the sum of the \eqn{k^{\rm th}}{k-th} powers of all
  the divisors of \code{n}.  Setting \eqn{k=0} corresponds to
  \eqn{d(n)}, which gives the number of divisors of \code{n}. 

  Function \code{mobius()} is the Moebius function (p234), giving zero
  if \code{n} has a repeated prime factor, and \eqn{(-1)^q} where
  \eqn{n=p_1p_2\ldots p_q}{n=p_1*p_2*...p_q} otherwise.

  Function \code{totient()} is Euler's totient function (p52), giving
  the number of integers smaller than \code{n} and relatively prime to
  it.

  Function \code{liouville()} gives the Liouville function.
}
\references{G. H. Hardy and E. M. Wright, 1985.  \emph{An
introduction to the theory of numbers} (fifth edition).
  Oxford University Press.}
\note{
  The divisor function crops up in \code{g2.fun()} and \code{g3.fun()}.
  Note that this function is not called \code{sigma()} to
  avoid conflicts with Weierstrass's \eqn{\sigma}{sigma} function (which
  ought to take priority in this context).
}
\author{Robin K. S. Hankin and Bill Venables (\code{primes()} and
\code{factorize()})}
\examples{
mobius(1)
mobius(2)
divisor(140)
divisor(140,3)


plot(divisor(1:100,k=1),type="s",xlab="n",ylab="divisor(n,1)")

plot(cumsum(liouville(1:1000)),type="l",main="does the function ever exceed zero?")
}
\keyword{math}
