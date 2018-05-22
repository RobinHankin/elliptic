\name{equianharmonic}
\alias{equianharmonic}
\alias{lemniscatic}
\alias{pseudolemniscatic}
\title{Special cases of the Weierstrass elliptic function}
\description{
Gives parameters for the equianharmonic case, the lemniscatic case, and
the pseudolemniscatic case.
}
\usage{
equianharmonic(...)
lemniscatic(...)
pseudolemniscatic(...)
}
\arguments{
  \item{\dots}{Ignored}
}
\details{
  These functions return values from section 18.13, p652; 18.14, p658;
  and 18.15, p662.  They use elementary functions (and the gamma
  function) only, so ought to be more accurate and faster than calling
  \code{parameters(g=c(1,0))} directly.

  Note that the values for the half periods correspond to the general
  case for complex \code{g2} and \code{g3} so are simple linear
  combinations of those given in AnS.
    
  One can use \code{parameters("equianharmonic")} \emph{et seq} instead.
 
}
\value{
  Returns a list with the same elements as \code{parameters()}.
}
\references{
    M. Abramowitz and I. A. Stegun 1965. \emph{Handbook of Mathematical
      Functions.}  New York, Dover.
}  
\author{Robin K. S. Hankin}
\seealso{\code{\link{parameters}}}
\examples{
P(z=0.1+0.1212i,params=equianharmonic())


x <- seq(from=-10,to=10,len=200)
z <- outer(x,1i*x,"+")
view(x,x,P(z,params=lemniscatic()),real=FALSE)
view(x,x,P(z,params=pseudolemniscatic()),real=FALSE)
view(x,x,P(z,params=equianharmonic()),real=FALSE)

}
\keyword{math}
