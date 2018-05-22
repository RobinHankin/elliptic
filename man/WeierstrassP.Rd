\name{WeierstrassP}
\alias{WeierstrassP}
\alias{P}
\alias{Pdash}
\alias{sigma}
\alias{zeta}
\alias{e18.10.1}
\alias{e18.10.2}
\alias{e18.10.3}
\alias{e18.10.4}
\alias{e18.10.5}
\alias{e18.10.6}
\alias{e18.10.7}
\concept{Weierstrass}
\concept{Weierstrass P function}
\concept{Weierstrass elliptic function}
\concept{Weierstrass zeta function}
\concept{Weierstrass sigma function}
\concept{Elliptic functions}
\title{Weierstrass P and related functions}
\description{
Weierstrass elliptic function and its derivative, Weierstrass sigma
function, and the Weierstrass zeta function
}
\usage{
P(z, g=NULL, Omega=NULL, params=NULL, use.fpp=TRUE, give.all.3=FALSE, ...)
Pdash(z, g=NULL, Omega=NULL, params=NULL, use.fpp=TRUE, ...)
sigma(z, g=NULL, Omega=NULL, params=NULL, use.theta=TRUE, ...)
zeta(z, g=NULL, Omega=NULL, params=NULL, use.fpp=TRUE, ...)
}
\arguments{
  \item{z}{Primary complex argument}
  \item{g}{Invariants \code{g=c(g2,g3)}.  Supply exactly one of
    (\code{g}, \code{Omega}, \code{params})}
  \item{Omega}{Half periods}
  \item{params}{Object with class \dQuote{\code{parameters}} (typically
    provided by  \code{parameters()})}
  \item{use.fpp}{Boolean, with default \code{TRUE} meaning to calculate
    \eqn{\wp(z^C)}{P(z^C)} where \eqn{z^C} is congruent to \eqn{z}
    in the period lattice.  The default means that accuracy is greater
    for large \eqn{z} but has the deficiency that slight
    discontinuities may appear near parallelogram boundaries}
  \item{give.all.3}{Boolean, with default \code{FALSE} meaning to return
    \eqn{\wp(z)}{P(z)} and \code{TRUE} meaning to return the other forms given
    in equation 18.10.5, p650.  Use \code{TRUE} to check for accuracy}
  \item{use.theta}{Boolean, with default \code{TRUE} meaning to use
    theta function forms, and \code{FALSE} meaning to use a Laurent
    expansion.  Usually, the theta function form is faster, but not
    always}
  \item{...}{Extra parameters passed to \code{theta1()} and \code{theta1dash()}}
}
\references{
  R. K. S. Hankin.  \emph{Introducing Elliptic, an R package for
    Elliptic and Modular Functions}.  Journal of Statistical Software,
  Volume 15, Issue 7.  February 2006.
}  
\author{Robin K. S. Hankin}
\note{
  In this package, function \code{sigma()} is the Weierstrass sigma
  function.  For the number theoretic divisor function also known as
  \dQuote{sigma}, see \code{divisor()}.
  }
\examples{
## Example 8, p666, RHS:
P(z=0.07 + 0.1i,g=c(10,2))

## Example 8, p666, RHS:
P(z=0.1 + 0.03i,g=c(-10,2))
## Right answer!

## Compare the Laurent series, which also gives the Right Answer (tm):
 P.laurent(z=0.1 + 0.03i,g=c(-10,2))


## Now a nice little plot of the zeta function:
x <- seq(from=-4,to=4,len=100)
z <- outer(x,1i*x,"+")
view(x,x,limit(zeta(z,c(1+1i,2-3i))),nlevels=6,scheme=1)


#now figure 18.5, top of p643:
p <- parameters(Omega=c(1+0.1i,1+1i))
n <- 40

f <- function(r,i1,i2=1)seq(from=r+1i*i1, to=r+1i*i2,len=n)
g <- function(i,r1,r2=1)seq(from=1i*i+r1,to=1i*i+2,len=n)

solid.lines <-
  c(
    f(0.1,0.5),NA,
    f(0.2,0.4),NA,
    f(0.3,0.3),NA,
    f(0.4,0.2),NA,
    f(0.5,0.0),NA,
    f(0.6,0.0),NA,
    f(0.7,0.0),NA,
    f(0.8,0.0),NA,
    f(0.9,0.0),NA,
    f(1.0,0.0)
    )
dotted.lines <-
  c(
    g(0.1,0.5),NA,
    g(0.2,0.4),NA,
    g(0.3,0.3),NA,
    g(0.4,0.2),NA,
    g(0.5,0.0),NA,
    g(0.6,0.0),NA,
    g(0.7,0.0),NA,
    g(0.8,0.0),NA,
    g(0.9,0.0),NA,
    g(1.0,0.0),NA
    )

plot(P(z=solid.lines,params=p),xlim=c(-4,4),ylim=c(-6,0),type="l",asp=1)
lines(P(z=dotted.lines,params=p),xlim=c(-4,4),ylim=c(-6,0),type="l",lty=2)
}
\keyword{math}
