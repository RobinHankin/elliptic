\name{misc}
\alias{Im<-}
\alias{Re<-}
\title{Manipulate real or imaginary components of an object}
\description{
Manipulate real or imaginary components of an object
}
\usage{
Im(x) <- value
Re(x) <- value
}
\arguments{
  \item{x}{Complex-valued object}
  \item{value}{Real-valued object}
}
\author{Robin K. S. Hankin}
\examples{
x <- 1:10
Im(x) <- 1

x <- 1:5
Im(x) <- 1/x

}
\keyword{math}
