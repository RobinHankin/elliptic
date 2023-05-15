\name{view}
\alias{view}
\concept{Thaller}
\title{Visualization of complex functions}
\description{
Visualization of complex functions using colour maps and contours
}
\usage{
view(x, y, z, scheme = 0, real.contour = TRUE, imag.contour = real.contour,
default = 0, col="black", r0=1, power=1, show.scheme=FALSE, ...)
}
\arguments{
  \item{x,y}{Vectors showing real and imaginary components of complex
    plane; same functionality as  arguments to \code{image()}}
  \item{z}{Matrix of complex values to be visualized}
  \item{scheme}{Visualization scheme to be used.  A numeric value is
    interpreted as one of the (numbered) provided schemes; see source
    code for details, as I add new schemes from time to time and the
    code would in any case dominate anything written here.

    A default of zero corresponds to Thaller (1998): see references.  
    For no colour (ie a white background), set \code{scheme} to a
    negative number.

    If \code{scheme} does not correspond to a built-in function, the
    \code{switch()} statement \dQuote{drops through} and provides a
    white background (use this to show just real or imaginary contours;
    a value of \eqn{-1} will always give this behaviour)

    If not numeric, \code{scheme} is interpreted as a function that
    produces a colour; see examples section below.  See details section
    for some tools that make writing such functions easier}
  \item{real.contour,imag.contour}{Boolean with default \code{TRUE}
    meaning to draw contours of constant \eqn{Re(z)} (resp: \eqn{Im(z)})
    and \code{FALSE} meaning not to draw them}
  \item{default}{Complex value to be assumed for colouration, if
    \code{z} takes \code{NA} or infinite values; defaults to zero.
    Set to \code{NA} for no substitution (ie plot \code{z} \dQuote{as is});
    usually a bad idea}
  \item{col}{Colour (sent to \code{contour()})}
  \item{r0}{If \code{scheme=0}, radius of Riemann sphere as used by
    Thaller}
  \item{power}{Defines a slight generalization of Thaller's scheme.
    Use high values to emphasize areas of high modulus (white) and low
    modulus (black); use low values to emphasize the argument over the
    whole of the function's domain.

    This argument is also applied to some of the other schemes where it
    makes sense}
    \item{show.scheme}{Boolean, with default \code{FALSE} meaning to
    perform as advertized and visualize a complex function; and
    \code{TRUE} meaning to return the function corresponding to the
    value of argument \code{scheme}}
  \item{\dots}{Extra arguments passed to \code{image()} and \code{contour()}}
}
\details{
  The examples given for different values of \code{scheme} are intended
  as examples only: the user is encouraged to experiment by passing
  homemade colour schemes (and indeed to pass such schemes to the
  author).

  Scheme 0 implements the ideas of Thaller: the complex plane is mapped
  to the Riemann sphere, which is coded with the North pole white
  (indicating a pole) and the South Pole black (indicating a zero).  The
  equator (that is, complex numbers of modulus \code{r0}) maps to
  colours of maximal saturation.

  Function \code{view()} includes several tools that simplify the
  creation of suitable functions for passing to \code{scheme}.

  These include:
  \describe{
  \item{\code{breakup()}:}{Breaks up a continuous map:
    \code{function(x){ifelse(x>1/2,3/2-x,1/2-x)}}}
  \item{\code{g()}:}{maps positive real to \eqn{[0,1]}:
    \code{function(x){0.5+atan(x)/pi}}}
  \item{\code{scale()}:}{scales range to \eqn{[0,1]}:
    \code{function(x){(x-min(x))/(max(x)-min(x))}}}
  \item{\code{wrap()}:}{wraps phase to \eqn{[0,1]}:
    \code{function(x){1/2+x/(2*pi)}}}
  }
}
\author{Robin K. S. Hankin}
\note{
  Additional ellipsis arguments are given to both \code{image()} and
  \code{contour()} (typically, \code{nlevels}).  The resulting
  \code{warning()} from one or other function is suppressed by
  \code{suppressWarnings()}.
}  
\references{
  B. Thaller 1998. \emph{Visualization of complex functions}, The
  Mathematica Journal, 7(2):163--180
  }
\examples{
n <- 100
x <- seq(from=-4,to=4,len=n)
y <- x
z <- outer(x,1i*y,"+")
view(x,y,limit(1/z),scheme=2)
view(x,y,limit(1/z),scheme=18)


view(x,y,limit(1/z+1/(z-1-1i)^2),scheme=5)
view(x,y,limit(1/z+1/(z-1-1i)^2),scheme=17)

view(x,y,log(0.4+0.7i+log(z/2)^2),main="Some interesting cut lines")


view(x,y,z^2,scheme=15,main="try finer resolution")
view(x,y,sn(z,m=1/2+0.3i),scheme=6,nlevels=33,drawlabels=FALSE)

view(x,y,limit(P(z,c(1+2.1i,1.3-3.2i))),scheme=2,nlevels=6,drawlabels=FALSE)
view(x,y,limit(Pdash(z,c(0,1))),scheme=6,nlevels=7,drawlabels=FALSE)
view(x,x,limit(zeta(z,c(1+1i,2-3i))),nlevels=6,scheme=4,col="white")

# Now an example with a bespoke colour function:

 fun <- function(z){hcl(h=360*wrap(Arg(z)),c= 100 * (Mod(z) < 1))}
 view(x,x,limit(zeta(z,c(1+1i,2-3i))),nlevels=6,scheme=fun)

view(scheme=10, show.scheme=TRUE)
}
\keyword{math}
