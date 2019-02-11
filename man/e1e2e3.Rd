\name{e1e2e3}
\alias{e1e2e3}
\alias{eee.cardano}
\alias{e18.3.1}
\alias{e18.3.7}
\alias{e18.3.8}
\title{Calculate e1, e2, e3 from the invariants}
\description{
  Calculates \eqn{e_1,e_2,e_3}{e1,e2,e3} from the invariants using
  either \code{polyroot} or Cardano's method.
}
\usage{
e1e2e3(g, use.laurent=TRUE, AnS=is.double(g), Omega=NULL, tol=1e-6)
eee.cardano(g)
}
\arguments{
  \item{g}{Two-element vector with \code{g=c(g2,g3)}}
  \item{use.laurent}{Boolean, with default \code{TRUE} meaning
    to use \code{P.laurent()} to determine the correct ordering for the
    \eqn{e}: \eqn{\wp(\omega_1)}{P(omega1)}, \eqn{\wp(\omega_2)}{P(omega2)},
    \eqn{\wp(\omega_3)}{P(omega3)}.  Setting to  \code{FALSE} means to
    return the solutions of the cubic equation directly: this is much
    faster, but is not guaranteed to find the \eqn{e_i}{e} in the
    right order (the roots are found according to the vagaries of
    \code{polyroot()})}
  \item{AnS}{Boolean, with default \code{TRUE} meaning to define
    \eqn{\omega_3}{omega3} as per ams-55, and \code{FALSE} meaning to
    follow Whittaker and Watson, and define
    \eqn{\omega_1}{omega1} and \eqn{\omega_2}{omega2} as the
    primitive half periods, and
    \eqn{\omega_3=-\omega_1-\omega_2}{omega3=-omega1-omega2}.  This is
    also consistent with Chandrasekharan except the factor of 2.

    Also note that setting \code{AnS} to \code{TRUE} forces the
    \eqn{e} to be real}
  \item{Omega}{A pair of primitive half periods, if known.  If supplied, the
    function uses them to calculate approximate values for the three
    \eqn{e}s (but supplies values calculated by \code{polyroot()},
    which are much more accurate).  The function needs the approximate
    values to determine in which order the \eqn{e}s should be, as
    \code{polyroot()} returns roots in whichever order the polynomial
    solver gives them in}
  \item{tol}{Real, relative tolerance criterion for terminating Laurent
    summation} 
}
\value{
  Returns a three-element vector.
  }
\note{
  Function \code{parameters()} calls \code{e1e2e3()}, so \strong{do not
    use \code{parameters()} to determine argument \code{g}, because
    doing so will result in a recursive loop.}

    Just to be specific: \code{e1e2e3(g=parameters(...))} will fail.  It
    would be pointless anyway, because \code{parameters()} returns
    (inter alia) \eqn{e_1, e_2, e_3}{e1, e2, e3}.

    There is considerable confusion about the order of \eqn{e_1}{e1},
    \eqn{e_2}{e2} and \eqn{e_3}{e3}, essentially due to Abramowitz and
    Stegun's definition of the half periods being inconsistent with that
    of Chandrasekharan's, and Mathematica's.  It is not possible to
    reconcile A and S's notation for theta functions with
    Chandrasekharan's definition of a primitive pair.  Thus,
    the convention adopted here is the rather strange-seeming choice of
    \eqn{e_1=\wp(\omega_1/2)}{e1=P(omega_1/2)},
    \eqn{e_2=\wp(\omega_3/2)}{e2=P(omega_3/2)},
    \eqn{e_3=\wp(\omega_2/2)}{e3=P(omega_2/2)}.  This has the advantage
    of making equation 18.10.5 (p650, ams55), and equation
    09.13.27.0011.01, return three identical values.

    The other scheme to rescue 18.10.5 would be to define
    \eqn{(\omega_1,\omega_3)}{(omega1,omega3)} as a primitive pair, and
    to require
    \eqn{\omega_2=-\omega_1-\omega_3}{omega2=-omega1-omega3}.  This is
    the method adopted by Mathematica; it is no more inconsistent with
    ams55 than the solution used in package \pkg{elliptic}.  However,
    this scheme suffers from the
    disadvantage that the independent elements of \code{Omega} would
    have to be supplied as \code{c(omega1,NA,omega3)}, and this is
    inimical to the precepts of R.

    One can realize the above in practice by
    considering what this package calls
    \dQuote{\eqn{\omega_2}{omega2}} to be \emph{really}
    \eqn{\omega_3}{omega3}, and what this package calls
    \dQuote{\eqn{\omega_1+\omega_2}{omega1+omega2}} to be
    \emph{really} \eqn{\omega_2}{omega2}.  Making function
    \code{half.periods()} return a three element vector with names
    \code{omega1}, \code{omega3}, \code{omega2} might work on some
    levels, and indeed might be the correct solution for a user
    somewhere; but it would be confusing.  This confusion would
    dog my weary steps for ever more.    
  }
\references{Mathematica}
\author{Robin K. S. Hankin}
\examples{
 sum(e1e2e3(g=c(1,2)))
}
\keyword{math}
