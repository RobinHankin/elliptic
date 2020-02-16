\name{theta.neville}
\alias{theta.neville}
\alias{theta.s}
\alias{theta.c}
\alias{theta.d}
\alias{theta.n}
\alias{e16.36.6}
\alias{e16.36.6a}
\alias{e16.36.6b}
\alias{e16.36.7}
\alias{e16.36.7a}
\alias{e16.36.7b}
\alias{e16.37.1}
\alias{e16.37.2}
\alias{e16.37.3}
\alias{e16.37.4}
\alias{e16.38.1}
\alias{e16.38.2}
\alias{e16.38.3}
\alias{e16.38.4}
\concept{Neville's theta functions}
\title{Neville's form for the theta functions}
\description{
Neville's notation for theta functions as per section 16.36 of
Abramowitz and Stegun.
}
\usage{
theta.s(u, m, method = "16.36.6", ...)
theta.c(u, m, method = "16.36.6", ...)
theta.d(u, m, method = "16.36.7", ...)
theta.n(u, m, method = "16.36.7", ...)
}

\arguments{
  \item{u}{Primary complex argument}
  \item{m}{Real parameter}
  \item{method}{Character string corresponding to A and S's equation
    numbering scheme}
  \item{...}{Extra arguments passed to the method function, such as
    \code{maxiter}}
}
\details{
  I reproduce the relevant sections of AMS-55 here, for convenience:

  \tabular{ll}{\cr
16.36.6a\tab\eqn{\displaystyle\vartheta_s(u) = \frac{2K\vartheta_1(v)}{\vartheta'_{1_{\vphantom{j_j}}}(0)}}{see PDF}\cr
16.36.6b\tab\eqn{\displaystyle\vartheta_c(u) = \frac{\vartheta_2(v)  }{\vartheta _{2_{\vphantom{j_j}}}(0)}}{see PDF}\cr
16.36.7a\tab\eqn{\displaystyle\vartheta_d(u) = \frac{\vartheta_3(v)  }{\vartheta _{3_{\vphantom{j_j}}}(0)}}{see PDF}\cr
16.36.7b\tab\eqn{\displaystyle\vartheta_n(u) = \frac{\vartheta_4(v)  }{\vartheta _{4_{\vphantom{j_j}}}(0)}}{see PDF}\cr
16.37.1\tab\eqn{\displaystyle\vartheta_s(u)=\left(\frac{16q}{mm_1}\right)^{1/6}\sin
  v\prod_{n=1}^\infty\left(1-2q^{2n}\cos 2v+q^{4n}\right)}{see PDF}\cr
16.37.2\tab\eqn{\displaystyle\vartheta_c(u)=\left(\frac{16qm_1^{1/2}}{m}\right)^{1/6}_{\vphantom{j_j}}\cos
  v\prod_{n=1}^\infty\left(1+2q^{2n}\cos 2v+q^{4n}\right)}{see PDF}\cr
16.37.3\tab\eqn{\displaystyle\vartheta_d(u)=\left(\frac{mm_1}{16q}\right)^{1/12}
  \prod_{n=1}^\infty\left(1+2q^{2n-1}\cos 2v+q^{4n-2}\right)}{see PDF}\cr
16.37.4\tab\eqn{\displaystyle\vartheta_n(u)=\left(\frac{m}{16qm_1^2}\right)^{1/12}
  \prod_{n=1}^\infty\left(1-2q^{2n-1}\cos 2v+q^{4n-2}\right)}{see PDF}
  }


  (in the above we have \eqn{v=\pi u/(2K)}{v=pi*u/(2K)} and \eqn{q=q(m)}).

}
\references{
  M. Abramowitz and I. A. Stegun 1965.  \emph{Handbook of mathematical
  functions}. New York: Dover
}
\author{Robin K. S. Hankin}
\examples{
#Figure 16.4.
m <- 0.5
K <- K.fun(m)
Kdash <- K.fun(1-m)
x <- seq(from=0,to=4*K,len=100)
plot  (x/K,theta.s(x,m=m),type="l",lty=1,main="Figure 16.4, p578")
points(x/K,theta.n(x,m=m),type="l",lty=2)
points(x/K,theta.c(x,m=m),type="l",lty=3)
points(x/K,theta.d(x,m=m),type="l",lty=4)
abline(0,0)



#plot a graph of something that should be zero:
 x <- seq(from=-4,to=4,len=55)
 plot(x,(e16.37.1(x,0.5)-theta.s(x,0.5)),pch="+",main="error: note vertical scale")

#now table 16.1 on page 582 et seq:
 alpha <- 85
 m <- sin(alpha*pi/180)^2
## K <- ellint_Kcomp(sqrt(m))
 K <- K.fun(m)
 u <- K/90*5*(0:18)
 u.deg <- round(u/K*90)
 cbind(u.deg,"85"=theta.s(u,m))      # p582, last col. 
 cbind(u.deg,"85"=theta.n(u,m))      # p583, last col. 


}
\keyword{math}
