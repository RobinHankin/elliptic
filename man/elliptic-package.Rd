\name{elliptic-package}
\alias{elliptic-package}
\alias{elliptic}
\docType{package}
\title{
Elliptic and modular functions
}
\description{
 A suite of elliptic and related functions including Weierstrass and
 Jacobi forms.  Also includes various tools for manipulating and
 visualizing complex functions
}
\details{
The primary function in package \pkg{elliptic} is \code{P()}: this
calculates the Weierstrass \eqn{\wp}{P} function, and may take named
arguments that specify either the invariants \code{g} or half
periods \code{Omega}.  The derivative is given by function \code{Pdash}
and the Weierstrass sigma and zeta functions are given by functions
\code{sigma()} and \code{zeta()} respectively; these are documented in
\code{?P}.  Jacobi forms are documented under \code{?sn} and modular
forms under \code{?J}.

Notation follows Abramowitz and Stegun (1965) where possible, although
there only real invariants are considered; \code{?e1e2e3} and
\code{?parameters} give a more detailed discussion.  Various equations
from AMS-55 are implemented (for fun); the functions are named after
their equation numbers in AMS-55; all references are to this work unless
otherwise indicated.

The package uses Jacobi's theta functions (\code{?theta} and
\code{?theta.neville}) where possible: they converge very quickly.

Various number-theoretic functions that are required for (eg) converting
a period pair to primitive form (\code{?as.primitive}) are implemented;
see \code{?divisor} for a list.

The package also provides some tools for numerical verification of
complex analysis such as contour integration (\code{?myintegrate}) and
Newton-Raphson iteration for complex functions
(\code{?newton_raphson}).

Complex functions may be visualized using \code{view()}; this is
customizable but has an extensive set of built-in colourmaps.
}
\author{
  Robin K. S. Hankin
}
\references{
  \itemize{
    \item
    R. K. S. Hankin.  \emph{Introducing Elliptic, an R package for
      Elliptic and Modular Functions}.  Journal of Statistical Software,
    Volume 15, Issue 7.  February 2006.
    \item
    M. Abramowitz and I. A. Stegun 1965. \emph{Handbook of Mathematical
      Functions.}  New York, Dover.
    \item
    K. Chandrasekharan 1985. \emph{Elliptic functions},  Springer-Verlag.
    \item
    E. T. Whittaker and G. N. Watson 1952.  \emph{A Course of Modern
      Analysis}, Cambridge University Press (fourth edition)
    \item
    G. H. Hardy and  E. M. Wright 1985.  \emph{An introduction to the
      theory of numbers}, Oxford University Press (fifth edition)
    \item
    S. D. Panteliou and A. D. Dimarogonas and I. N .Katz 1996.
    \emph{Direct and inverse interpolation for Jacobian elliptic
      functions, zeta function of Jacobi and complete elliptic integrals
      of the second kind}.  Computers and Mathematics with Applications,
    volume 32, number 8, pp51-57
    \item
    E. L. Wachspress 2000.  \emph{Evaluating Elliptic functions and their
      inverses}.  Computers and Mathematics with Applications, volume 29,
    pp131-136
    \item
    D. G. Vyridis and S. D. Panteliou and I. N. Katz 1999.  \emph{An inverse
      convergence approach for arguments of Jacobian elliptic functions}.
    Computers and Mathematics with Applications, volume 37, pp21-26
    \item
    S. Paszkowski 1997.  \emph{Fast convergent quasipower series for some
      elementary and special functions}.   Computers and Mathematics with
    Applications, volume 33, number 1/2, pp181-191
    \item
    B. Thaller 1998. \emph{Visualization of complex functions}, The
    Mathematica Journal, 7(2):163--180
    \item
    J. Kotus and M. Urb\'{a}nski 2003.  \emph{Hausdorff dimension and Hausdorff
      measures of Julia sets of elliptic functions}.  Bulletin of the London
    Mathematical Society, volume 35, pp269-275
  }
}
\keyword{ package }
\examples{
     ## Example 8, p666, RHS:
 P(z=0.07 + 0.1i, g=c(10,2)) 

     ## Now a nice little plot of the zeta function:
 x <- seq(from=-4,to=4,len=100)
 z <- outer(x,1i*x,"+")
 par(pty="s")
 view(x,x,limit(zeta(z,c(1+1i,2-3i))),nlevels=3,scheme=1)
 view(x,x,P(z*3,params=equianharmonic()),real=FALSE)

     ## Some number theory:
 mobius(1:10)
 plot(divisor(1:300,k=1),type="s",xlab="n",ylab="divisor(n,1)")

    ## Primitive periods:
 as.primitive(c(3+4.01i , 7+10i))
 as.primitive(c(3+4.01i , 7+10i),n=10)   # Note difference

    ## Now some contour integration:
 f <- function(z){1/z}
 u <- function(x){exp(2i*pi*x)}
 udash <- function(x){2i*pi*exp(2i*pi*x)}
 integrate.contour(f,u,udash) - 2*pi*1i


 x <- seq(from=-10,to=10,len=200)
 z <- outer(x,1i*x,"+")
 view(x,x,P(z,params=lemniscatic()),real=FALSE)
 view(x,x,P(z,params=pseudolemniscatic()),real=FALSE)
 view(x,x,P(z,params=equianharmonic()),real=FALSE)
}
