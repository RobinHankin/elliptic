\name{theta}
\alias{theta}
\alias{theta1}
\alias{theta2}
\alias{theta3}
\alias{theta4}
\alias{e16.27.1}
\alias{e16.27.2}
\alias{e16.27.3}
\alias{e16.27.4}
\alias{theta.00}
\alias{theta.01}
\alias{theta.10}
\alias{theta.11}
\alias{Theta}
\alias{Theta1}
\alias{H}
\alias{H1}
\alias{e16.31.1}
\alias{e16.31.2}
\alias{e16.31.3}
\alias{e16.31.4}
\title{Jacobi theta functions 1-4}
\description{
Computes Jacobi's four theta functions for complex \eqn{z} in terms
of the parameter \eqn{m} or \eqn{q}.
}
\usage{
theta1  (z, ignore=NULL, m=NULL, q=NULL, give.n=FALSE, maxiter=30, miniter=3)
theta2  (z, ignore=NULL, m=NULL, q=NULL, give.n=FALSE, maxiter=30, miniter=3)
theta3  (z, ignore=NULL, m=NULL, q=NULL, give.n=FALSE, maxiter=30, miniter=3)
theta4  (z, ignore=NULL, m=NULL, q=NULL, give.n=FALSE, maxiter=30, miniter=3)
theta.00(z, ignore=NULL, m=NULL, q=NULL, give.n=FALSE, maxiter=30, miniter=3)
theta.01(z, ignore=NULL, m=NULL, q=NULL, give.n=FALSE, maxiter=30, miniter=3)
theta.10(z, ignore=NULL, m=NULL, q=NULL, give.n=FALSE, maxiter=30, miniter=3)
theta.11(z, ignore=NULL, m=NULL, q=NULL, give.n=FALSE, maxiter=30, miniter=3)
Theta (u, m, ...)
Theta1(u, m, ...)
H (u, m, ...)
H1(u, m, ...)
}
\arguments{
  \item{z,u}{Complex argument of function}
  \item{ignore}{Dummy variable whose intention is to force the user to
    name the second argument either \code{m} or \code{q}}
  \item{m}{Does not seem to have a name.   The variable is introduced in
    section 16.1, p569}
  \item{q}{The nome \eqn{q}, defined in section 16.27, p576}
  \item{give.n}{Boolean with default \code{FALSE} meaning to return the
    function evaluation, and \code{TRUE} meaning to return a two element
    list, with first element the function evaluation, and second element
    the number of iterations used}
  \item{maxiter}{Maximum number of iterations used.  Note that the
    series generally converge very quickly}
  \item{miniter}{Minimum number of iterations to guard against premature
    exit if an addend is zero exactly}
  \item{...}{In functions that take it, extra arguments passed to
    \code{theta1()} et seq; notably, \code{maxiter}}
}
\details{
  Functions \code{theta.00()} et seq are just wrappers for 
  \code{theta1()} et seq, following Whittaker and Watson's terminology
  on p487; the notation does not appear in Abramowitz and Stegun.
  \itemize{
    \item \code{theta.11() = theta1()}
    \item \code{theta.10() = theta2()}
    \item \code{theta.00() = theta3()}
    \item \code{theta.01() = theta4()}
    }
}
\value{
  Returns a complex-valued object with the same attributes as either
  \code{z}, or (\code{m} or \code{q}), whichever wasn't recycled.
}
\references{
  M. Abramowitz and I. A. Stegun 1965.  \emph{Handbook of mathematical
  functions}.  New York: Dover
}  
\author{Robin K. S. Hankin}
\seealso{\code{\link{theta.neville}}}
\examples{

m <- 0.5
derivative <- function(small){(theta1(small,m=m)-theta1(0,m=m))/small}
right.hand.side1 <-  theta2(0,m=m)*theta3(0,m=m)*theta4(0,m=m)
right.hand.side2 <-  theta1.dash.zero(m)

derivative(1e-5)-right.hand.side1   #should be zero
derivative(1e-5)-right.hand.side2   #should be zero
}
\keyword{array}
