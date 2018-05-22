\name{near.match}
\alias{near.match}
\title{Are two vectors close to one another?}
\description{
  Returns \code{TRUE} if each element of \code{x} and \code{y} are
  \dQuote{near} one another
}
\usage{
near.match(x, y, tol=NULL)
}
\arguments{
  \item{x}{First object}
  \item{y}{Second object}
  \item{tol}{Relative tolerance with default NULL meaning to use machine
    precision} 
} 
\author{Robin K. S. Hankin}
\examples{
x <- rep(1,6)
near.match(x, x+rnorm(6)/1e10)
}
\keyword{math}
