\name{parameters}
\alias{parameters}
\alias{e18.7.4}
\alias{e18.7.5}
\alias{e18.7.7}
\alias{e18.3.5}
\alias{e18.3.3}
\alias{e18.3.37}
\alias{e18.3.38}
\alias{e18.3.39}
\title{Parameters for Weierstrass's P function}
\description{
  Calculates the invariants \eqn{g_2}{g2} and \eqn{g_3}{g3},
  the e-values \eqn{e_1,e_2,e_3}{e1,e2,e3}, and the half periods
  \eqn{\omega_1,\omega_2}{omega1, omega2}, from any one of them.
}
\usage{
parameters(Omega=NULL, g=NULL, description=NULL)
}
\arguments{
  \item{Omega}{Vector of length two, containing the \strong{half
      periods} \eqn{(\omega_1,\omega_2)}{(omega1,omega2)}}
  \item{g}{Vector of length two:
    \eqn{(g_2,g_3)}{(g2,g3)}}
  \item{description}{string containing \dQuote{equianharmonic},
    \dQuote{lemniscatic}, or \dQuote{pseudolemniscatic}, to specify one
    of A and S's special cases}    
}
\value{
  Returns a list with the following items:
  
  \item{Omega}{A complex vector of length 2 giving the fundamental half
    periods \eqn{\omega_1}{omega1} and \eqn{\omega_2}{omega2}.  Notation
    follows Chandrasekharan: half period
    \eqn{\omega_1}{omega1} is 0.5 times a (nontrivial) period of minimal
    modulus, and \eqn{\omega_2}{omega2} is 0.5 times a period of smallest
    modulus having the property \eqn{\omega_2/\omega_1}{omega2/omega1}
    not real.
    
    The relevant periods are made unique by the further requirement that
    \eqn{\mathrm{Re}(\omega_1)>0}{Re(omega1)>0}, and 
    \eqn{\mathrm{Im}(\omega_2)>0}{Im(omega2)>0}; but note that this
    often results in sign changes when considering cases on boundaries
    (such as real \eqn{g_2}{g2} and \eqn{g_3}{g3}). 
    
    \strong{Note} Different definitions exist for \eqn{\omega_3}{omega3}!
    A and S use \eqn{\omega_3=\omega_2-\omega_1}{omega3=omega2-omega1},
    while Whittaker and Watson (eg, page 443), and Mathematica, have
    \eqn{\omega_1+\omega_2+\omega_3=0}{omega1+omega2+omega3=0}
    }

    \item{q}{The nome.  Here,
      \eqn{q=e^{\pi i\omega_2/\omega_1}}{q=exp(pi*i*omega2/omega1)}.}
    \item{g}{Complex vector of length 2 holding the invariants}
    \item{e}{Complex vector of length 3.  Here \eqn{e_1}{e1}, \eqn{e_2}{e2},
      and \eqn{e_3}{e3} are defined by
      \deqn{e_1=\wp(\omega_1/2)m\qquad e_2=\wp(\omega_2/2),\qquad
	e_3=\wp(\omega_3/2)}{e1=P(omega1/2), e2=P(omega2/2),
	e3=P(omega3/2),}
    where \eqn{\omega_3}{omega3} is defined by
    \eqn{\omega_1+\omega_2+\omega_3=0}{\omega1+omega2+omega3=0}.
    
    Note that the \eqn{e}s are also defined as the three roots of
    \eqn{x^3-g_2x-g_3=0}{x^3-g2*x-g3=0}; but this method cannot be used in
    isolation because the roots may be returned in the wrong order.}
    \item{Delta}{The quantity \eqn{g_2^3-27g_3^2}{g2^3-27*g3^2}, often
      denoted \eqn{\Delta}{Greek capital Delta}}
    \item{Eta}{Complex vector of length 3 often denoted
      \eqn{\eta}{by the greek letter eta}.  Here
      \eqn{\eta=(\eta_1,\eta_2,\eta_3)}{eta=(eta_1,eta_2,eta_3)} are defined
      in terms of the Weierstrass zeta function with
      \eqn{\eta_i=\zeta(\omega_i)}{eta_i\zeta(omega_i)} for \eqn{i=1,2,3}.
      
      Note that the name of this element is capitalized to avoid confusion 
      with function \code{eta()}}
    \item{is.AnS}{Boolean, with \code{TRUE} corresponding to real
      invariants, as per Abramowitz and Stegun}
    \item{given}{character string indicating which parameter was supplied.
      Currently, one of \dQuote{\code{o}} (omega), or  \dQuote{\code{g}}
      (invariants)}
  }
\author{Robin K. S. Hankin}
\examples{
 ## Example 6, p665, LHS
 parameters(g=c(10,2))
 ## Not clear to me how AMS-55 justify 7 sig figs

 ## Example 7, p665, RHS
 a <- parameters(g=c(7,6)) ;  attach(a)
 c(omega2=Omega[1],omega2dash=Omega[1]+Omega[2]*2)


  ## verify 18.3.37:
  Eta[2]*Omega[1]-Eta[1]*Omega[2]   #should be close to pi*1i/2


## from Omega to g and and back;
## following should be equivalent to c(1,1i):
 parameters(g=parameters(Omega=c(1,1i))$g)$Omega 


}
\keyword{math}
