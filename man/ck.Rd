\name{ck}
\alias{ck}
\alias{e18.5.2}
\alias{e18.5.3}
\alias{e18.5.16}
\title{Coefficients of Laurent expansion of Weierstrass P function}
\description{
  Calculates the coefficients of the Laurent expansion of the
  Weierstrass \eqn{\wp}{P} function in terms of the invariants
}
\usage{
ck(g, n=20)
}
\arguments{
  \item{g}{The invariants: a vector of length two with \code{g=c(g2,g3)}}
  \item{n}{length of series}
}
\details{
  Calculates the series \eqn{c_k} as per equation 18.5.3, p635.
  }
\author{Robin K. S. Hankin}
\seealso{\code{\link{P.laurent}}}
\examples{
 #Verify 18.5.16, p636:
 x <- ck(g=c(0.1+1.1i,4-0.63i))
14*x[2]*x[3]*(389*x[2]^3+369*x[3]^2)/3187041-x[11] #should be zero


# Now try a random example by comparing the default (theta function) method
# for P(z) with the Laurent expansion:

z <- 0.5-0.3i
g <- c(1.1-0.2i, 1+0.4i)
series <- ck(15,g=g)
1/z^2+sum(series*(z^2)^(0:14)) - P(z,g=g) #should be zero
}

\keyword{math}
