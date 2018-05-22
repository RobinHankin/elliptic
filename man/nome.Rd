\name{nome}
\alias{nome}
\alias{nome.k}
\title{Nome in terms of m or k}
\description{
  Calculates the nome in terms of either \eqn{m} (\code{nome()})
  or \eqn{k} (\code{nome.k()}).
}
\usage{
nome(m)
nome.k(k)
}
\arguments{
  \item{m}{Real parameter}
  \item{k}{Real parameter with \eqn{k=m^2}}
}
\author{Robin K. S. Hankin}
\note{
  The nome is defined as \eqn{e^{-i\pi K'/K}}{exp(-pi*i*K'/K)}, where
  \eqn{K} and \eqn{iK'} are the quarter periods (see page 576 of
  AMS-55).  These are calculated using function \code{K.fun()}. 
}
\seealso{\code{\link{K.fun}}} 
\examples{
nome(0.09)  # AMS-55 give 0.00589414 in example 7 on page 581
}

\keyword{math}
