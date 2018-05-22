\name{g.fun}
\alias{g.fun}
\alias{g2.fun}
\alias{g3.fun}
\alias{g2.fun.lambert}
\alias{g3.fun.lambert}
\alias{g2.fun.direct}
\alias{g3.fun.direct}
\alias{g2.fun.fixed}
\alias{g3.fun.fixed}
\alias{g2.fun.divisor}
\alias{g3.fun.divisor}
\alias{g2.fun.vectorized}
\alias{g3.fun.vectorized}
\alias{e18.1.1}
\title{Calculates the invariants g2 and g3}
\description{
Calculates the invariants g2 and g3 using any of a number of methods
}
\usage{
g.fun(b, ...)
g2.fun(b, use.first=TRUE, ...)
g3.fun(b, use.first=TRUE, ...)
g2.fun.lambert(b, nmax=50, tol=1e-10, strict=TRUE)
g3.fun.lambert(b, nmax=50, tol=1e-10, strict=TRUE)
g2.fun.direct(b, nmax=50, tol=1e-10)
g3.fun.direct(b, nmax=50, tol=1e-10)
g2.fun.fixed(b, nmax=50, tol=1e-10, give=FALSE)
g3.fun.fixed(b, nmax=50, tol=1e-10, give=FALSE)
g2.fun.vectorized(b, nmax=50, tol=1e-10, give=FALSE)
g3.fun.vectorized(b, nmax=50, tol=1e-10, give=FALSE)
}
\arguments{
\item{b}{Half periods.  NB: the arguments
  are the \strong{half periods} as per AMS55!
  In these functions, argument \code{b} is interpreted as per
  \code{p1.tau()}}
\item{nmax}{Maximum number of terms to sum.  See details section for
  more discussion}
\item{tol}{Numerical tolerance for stopping: summation stops when adding
  an additional term makes less}
\item{strict}{Boolean, with default (where taken) \code{TRUE} meaning to
  \code{stop()} if convergence is not achieved in \code{nmax} terms.
  Setting to \code{FALSE} returns the partial sum and a warning.}
\item{give}{Boolean, with default (where taken) \code{TRUE} meaning to
  return the partial sums.  See examples section for an example of this
  argument in use}
\item{...}{In functions \code{g.fun()}, \code{g2.fun()} and
  \code{g3.fun()}, extra arguments passed to \code{theta1()} and friends}
\item{use.first}{In function \code{g2.fun()} and \code{g3.fun()},
  Boolean with default \code{TRUE} meaning to use Wolfram's first formula
  (\strong{remember to cite this}) and \code{FALSE} meaning to use the second}
}
\details{
  Functions \code{g2.fun()} and \code{g3.fun()} use theta functions
  which converge very quickly.  These functions are the best in most
  circumstances.  The theta functions include a loop that continues to add
  terms until the partial sum is unaltered by addition
  of the next term.  Note that summation continues until \emph{all}
  elements of the argument are properly summed, so performance is
  limited by the single worst-case element.
  
  The following functions are provided for interest only, although there
  is a remote possibility that some weird circumstances may exist in which
  they are faster than the theta function approach.  

  Functions \code{g2.fun.divisor()} and \code{g3.fun.divisor()} use
  Chandrasekharan's formula on page 83.  This is generally slower than
  the theta function approach

  Functions \code{g2.fun.lambert()} and \code{g3.fun.lambert()} use a 
  Lambert series to accelerate Chandrasekharan's formula.  In general,
  it is a little better than the divisor form.
  
  Functions \code{g2.fun.fixed()} and \code{g2.fun.fixed()} also use
  Lambert series.  These functions are vectorized in the sense that
  the function body uses only vector operations.  These functions do
  not take a vector argument.  They are called \dQuote{fixed} because
  the number of terms used is fixed in advance (unlike \code{g2.fun()}
  and \code{g3.fun()}).
  
  Functions \code{g2.fun.vectorized()} and \code{g3.fun.vectorized()}
  also use Lambert series.  They are fully vectorized in that they take
  a vector of periods or period ratios, unlike the previous two
  functions.  However, this can lead to loss of precision in some
  cases (specifically when the periods give rise to widely varying
  values of g2 and g3).
  
  Functions \code{g2.fun.direct()} and \code{g3.fun.direct()} use a
  direct summation.  These functions are absurdly slow.  In general,
  the Lambert series functions converge much faster; and the
  \dQuote{default} functions \code{g2.fun()} and \code{g3.fun()},
  which use theta functions, converge faster still.
}
\references{
  Mathematica website
}
\author{Robin K. S. Hankin}
\examples{

g.fun(half.periods(g=c(8,4+1i)))  ## should be c(8,4+1i)


## Example 4, p664, LHS:
omega <- c(10,11i)
(g2 <- g2.fun(omega))
(g3 <- g3.fun(omega))
e1e2e3(Re(c(g2,g3)))

## Example 4, p664, RHS:
omega2 <- 10
omega2dash <- 11i
omega1 <- (omega2-omega2dash)/2   ## From figure 18.1, p630
(g2 <- g2.fun(c(omega1,omega2)))
(g3 <- g3.fun(c(omega1,omega2)))
e1e2e3(Re(c(g2,g3)))
}
\keyword{math}
