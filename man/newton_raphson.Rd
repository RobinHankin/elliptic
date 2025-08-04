\name{newton_raphson}
\alias{newton_raphson}
\alias{Newton_raphson}
\alias{Newton_Raphson}
\alias{newton_Raphson}
\title{Newton Raphson iteration to find roots of equations}
\description{
Newton-Raphson iteration to find roots of equations with the emphasis
on complex functions
}
\usage{
 newton_raphson(initial, f, fdash, maxiter, give=TRUE, tol = .Machine$double.eps)
}
\arguments{
  \item{initial}{Starting guess}
  \item{f}{Function for which \eqn{f(z)=0} is to be solved for
    \eqn{z}}
  \item{fdash}{Derivative of function (note: Cauchy-Riemann conditions
    assumed)} 
  \item{maxiter}{Maximum number of iterations attempted}
  \item{give}{Boolean, with default \code{TRUE} meaning to give
    output based on that of \code{uniroot()} and \code{FALSE} meaning to
    return only the estimated root}
  \item{tol}{Tolerance: iteration stops if \eqn{|f(z)|<tol}{|f(z)|<tol}}
}
\details{
  Bog-standard implementation of the Newton-Raphson algorithm
}
\value{
  If argument \code{give} is \code{FALSE}, returns \eqn{z} with
  \eqn{|f(z)|<tol}; if \code{TRUE}, returns a list with elements
  \code{root} (the estimated root), \code{f.root} (the function
  evaluated at the estimated root; should have small modulus), and
  \code{iter}, the number of iterations required.
}
\note{
Previous versions of this function used the misspelling
\dQuote{Rapheson}.
  }
\author{Robin K. S. Hankin}
\examples{

# Find the two square roots of 2+i:
f <- function(z){z^2-(2+1i)}
fdash <- function(z){2*z}
newton_raphson( 1.4+0.3i,f,fdash,maxiter=10)
newton_raphson(-1.4-0.3i,f,fdash,maxiter=10)

# Now find the three cube roots of unity:
g <- function(z){z^3-1}
gdash <- function(z){3*z^2}
newton_raphson(-0.5+1i, g, gdash, maxiter=10)
newton_raphson(-0.5-1i, g, gdash, maxiter=10)
newton_raphson(+0.5+0i, g, gdash, maxiter=10)
}
\keyword{math}
