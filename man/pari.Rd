\name{pari}
\alias{pari}
\alias{PARI}
\alias{P.pari}
\alias{gp}
\alias{GP}
\alias{Gp}
\title{Wrappers for PARI functions}
\description{
Wrappers for the three elliptic functions of PARI
}
\usage{
P.pari(z,Omega,pari.fun="ellwp",numerical=TRUE)
}
\arguments{
  \item{z}{Complex argument}
  \item{Omega}{Half periods}
  \item{pari.fun}{String giving the name of the function passed to
    PARI.  Values of \code{ellwp}, \code{ellsigma}, and \code{ellzeta},
    are acceptable here for the Weierstrass \eqn{\wp}{P} function, the
    \eqn{\sigma}{sigma} function, and the \eqn{\zeta}{zeta} function
    respectively}   
  \item{numerical}{Boolean with default \code{TRUE} meaning to return
    the complex value returned by PARI, and \code{FALSE} meaning to
    return the ascii string returned by PARI}
}
\details{
  This function calls PARI via an R \code{system()} call.
}
\value{
  Returns an object with the same attributes as \code{z}.
}
\references{\url{http://www.parigp-home.de/}}
\author{Robin K. S. Hankin}
\note{
Function translates input into, for example,
\dQuote{\code{ellwp([1+1*I,2+3*I],1.111+5.1132*I)}} and pipes this string
directly into \code{gp}.

The PARI system clearly has more powerful syntax than the basic version
that I'm using here, but I can't (for example) figure out how to
vectorize any of the calls.
}
\examples{
\dontrun{ #this in a dontrun environment because it requires pari/gp 
z  <- seq(from=1,to=3+2i,len=34)
p <- c(1,1i)
plot(abs(P.pari(z=z,Omega=p) - P(z=z,Omega=p)))
plot(zeta(z=z,params=parameters(Omega=p))- P.pari(z=z,Omega=c(p),pari.fun="ellzeta"))

}
}
\keyword{math}
