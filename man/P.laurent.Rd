\name{P.laurent}
\alias{P.laurent}
\alias{Pdash.laurent}
\alias{sigma.laurent}
\alias{sigmadash.laurent}
\alias{zeta.laurent}
\alias{e18.5.1}
\alias{e18f.5.3}
\alias{e18.5.4}
\alias{e18.5.5}
\alias{e18.5.6}
\title{Laurent series for elliptic and related functions}
\description{
Laurent series for various functions
}
\usage{
        P.laurent(z, g=NULL, tol=0, nmax=80)
    Pdash.laurent(z, g=NULL, nmax=80)
    sigma.laurent(z, g=NULL, nmax=8, give.error=FALSE)
sigmadash.laurent(z, g=NULL, nmax=8, give.error=FALSE)
     zeta.laurent(z, g=NULL, nmax=80)
}
\arguments{
  \item{z}{Primary argument (complex)}
  \item{g}{Vector of length two with \code{g=c(g2,g3)}}
  \item{tol}{Tolerance}
  \item{give.error}{In \code{sigma.laurent()}, Boolean with default
    \code{FALSE} meaning to return the computed value and \code{TRUE}
    to return the error (as estimated by the sum of the absolute values
    of the terms along the minor long diagonal of the matrix)}.
  \item{nmax}{Number of terms used (or, for \code{sigma()}, the size of
    matrix used)}
}
\author{Robin K. S. Hankin}
\examples{
sigma.laurent(z=1+1i,g=c(0,4))
  }
\keyword{math}
