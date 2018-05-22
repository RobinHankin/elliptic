\name{farey}
\alias{farey}
\title{Farey sequences}
\description{
  Returns the Farey sequence of order \eqn{n}{n}
}
\usage{
farey(n, print=FALSE, give.series = FALSE)
}
\arguments{
  \item{n}{Order of Farey sequence}
  \item{print}{Boolean, with \code{TRUE} meaning to print out the text
    version of the Farey sequence in human-readable form.  Default value
    of \code{FALSE} means not to print anything}
  \item{give.series}{Boolean, with \code{TRUE} meaning to return the
    series explicitly, and default \code{FALSE} meaning to return a 3
    dimensional array as detailed below}
}
\details{  
  If \code{give.series} takes its default value of \code{FALSE}, return
  a matrix \code{a} of dimension \code{c(2,u)} where \code{u} is a
  (complicated) function of \code{n}.  If \code{v <- a[i,]}, then
  \code{v[1]/v[2]} is the \eqn{i^{\mathrm{th}}}{i-th} term of the Farey
  sequence.  Note that \code{det(a[(n):(n+1),])== -1} 

  If \code{give.series} is \code{TRUE}, then return a matrix \code{a} of
  size \code{c(4,u-1)}.  If \code{v <- a[i,]}, then \code{v[1]/v[2]} and
  \code{v[3]/v[4]} are successive pairs of the Farey sequence.  Note
  that \code{det(matrix(a[,i],2,2))== -1}  
}
\references{
    G. H. Hardy and  E. M. Wright 1985.  \emph{An introduction to the
      theory of numbers}, Oxford University Press (fifth edition)
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{unimodular}}}
\examples{
farey(3)
}
\keyword{array}
