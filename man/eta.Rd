\name{eta}
\alias{eta}
\alias{eta.series}
\title{Dedekind's eta function}
\description{  Dedekind's \eqn{\eta}{eta} function  }
\usage{
eta(z, ...)
eta.series(z, maxiter=300)
}
\arguments{
  \item{z}{Complex argument}
  \item{\dots}{In function \code{eta()}, extra arguments sent to
    \code{theta3()}}
  \item{maxiter}{In function \code{eta.series()}, maximum value of
    iteration}
}
\details{
  Function \code{eta()} uses Euler's formula, viz
  \deqn{\eta(z)=e^{\pi
      iz/12}\theta_3\left(\frac{1}{2}+\frac{z}{2},3z\right)}{[omitted;
    see LaTeX version}

  Function \code{eta.series()} is present for validation (and interest)
  only; it uses the infinite product formula:
  \deqn{\eta(z)=
    e^{\pi iz/12}\prod_{n=1}^\infty\left(1-e^{2\pi inz}\right)}{[omitted;
    see LaTeX version]}
}
\references{
  K. Chandrasekharan 1985. \emph{Elliptic functions},  Springer-Verlag.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{farey}}}
\examples{
 z <- seq(from=1+1i,to=10+0.06i,len=999)
 plot(eta(z))

max(abs(eta(z)-eta.series(z)))
}
\keyword{math}
