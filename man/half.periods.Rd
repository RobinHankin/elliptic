\name{half.periods}
\alias{half.periods}
\title{Calculates half periods in terms of e}
\description{
Calculates half periods in terms of \eqn{e}
}
\usage{
half.periods(ignore=NULL, e=NULL, g=NULL, primitive)
}
\arguments{
  \item{e}{e}
  \item{g}{g}
  \item{ignore}{Formal argument present to ensure that \code{e} or
    \code{g} is named (ignored)}
  \item{primitive}{Boolean, with default \code{TRUE} meaning to return
    primitive periods and \code{FALSE} to return the direct result of
    Legendre's iterative scheme}
}
\details{    
  Parameter \code{e=c(e1, e2, e3)} are the values of the Weierstrass
  \eqn{\wp}{P} function at the half periods:
  \deqn{e_1=\wp(\omega_1)\qquad e_2=\wp(\omega_2)\qquad e_3=
  \wp(\omega_3)}{e1=P(omega1), e2=P(omega2), e3=p(omega3)} where
  \deqn{\omega_1+\omega_2+\omega_3=0.}{omega1+omega2+omega3=0.}
  
  Also, \eqn{e} is given by the roots of the cubic
  equation \eqn{x^3-g_2x-g_3=0}{x^3-g2*x-g3=0}, but the problem is
  finding which root corresponds to which of the three elements of
  \eqn{e}.
}
\value{
  Returns a pair of primitive half periods
}
\references{
    M. Abramowitz and I. A. Stegun 1965. \emph{Handbook of Mathematical
      Functions.}  New York, Dover.
}
\author{Robin K. S. Hankin}
\note{Function \code{parameters()} uses function \code{half.periods()}
  internally, so do not use \code{parameters()} 
  to determine \code{e}.
}
\examples{

half.periods(g=c(8,4))                ## Example 6, p665, LHS

u <- half.periods(g=c(-10,2))
massage(c(u[1]-u[2] , u[1]+u[2]))     ## Example 6, p665, RHS

half.periods(g=c(10,2))               ## Example 7, p665, LHS

u <- half.periods(g=c(7,6))
massage(c(u[1],2*u[2]+u[1]))          ## Example 7, p665, RHS


half.periods(g=c(1, 1i, 1.1+1.4i))
half.periods(e=c(1, 1i, 2, 1.1+1.4i))


g.fun(half.periods(g=c(8,4)))         ##  should be c(8,4)


}
\keyword{math}
