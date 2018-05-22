\name{limit}
\alias{limit}
\title{Limit the magnitude of elements of a vector}
\description{
  Deals appropriately with objects with a few very large elements
}
\usage{
limit(x, upper=quantile(Re(x),0.99,na.rm=TRUE),
         lower=quantile(Re(x),0.01,na.rm=TRUE),
         na = FALSE)
}
\arguments{
  \item{x}{Vector of real or complex values}
  \item{upper}{Upper limit}
  \item{lower}{Lower limit}
  \item{na}{Boolean, with default \code{FALSE} meaning to \dQuote{clip}
    \code{x} (if real) by setting elements of \code{x} with \code{x>high} to
    \code{high}; if \code{TRUE}, set such elements to \code{NA}.
    If \code{x} is complex, this argument is ignored}
}
\details{
  If \code{x} is complex, \code{low} is ignored and the function returns
  \code{x}, after executing \code{x[abs(x)>high] <- NA}.
}
\author{Robin K. S. Hankin}
\examples{

x <- c(rep(1,5),300, -200)
limit(x,100)
limit(x,upper=200,lower= -400)
limit(x,upper=200,lower= -400,na=TRUE)
}
\keyword{math}
