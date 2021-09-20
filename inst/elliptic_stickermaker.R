# reproduces a slight modification of figure 18.5 (top), p643.

library("elliptic")
library("hexSticker")
p <- parameters(Omega=c(1+0.1i,1+1i))
n <- 90
f <- function(r,i1,i2=1)seq(from=r+1i*i1, to=r+1i*i2,len=n)
g <- function(i,r1,r2=1)seq(from=1i*i+r1, to=1i*i+2,len=n)

solid.lines <-
  c(
    f(0.1,0.5),NA,
    f(0.2,0.4),NA,
    f(0.3,0.3),NA,
    f(0.4,0.2),NA,
    f(0.5,0.0),NA,
    f(0.6,0.0),NA,
    f(0.7,0.0),NA,
    f(0.8,0.0),NA,
    f(0.9,0.0),NA,
    f(1.0,0.0)
    )
dotted.lines <-
  c(
    g(0.1,0.5),NA,
    g(0.2,0.4),NA,
    g(0.3,0.3),NA,
    g(0.4,0.2),NA,
    g(0.5,0.0),NA,
    g(0.6,0.0),NA,
    g(0.7,0.0),NA,
    g(0.8,0.0),NA,
    g(0.9,0.0),NA,
    g(1.0,0.0),NA
    )

png(file="elliptic_icon.png",width=1000,height=1000,bg="transparent")
plot(P(z=solid.lines,params=p),xlim=c(-4,4),ylim=c(-6,9),type="l",lwd=7,asp=1,axes=FALSE,xlab="",ylab="")
lines(P(z=dotted.lines,params=p),type="l",lty=3,lwd=7)
dev.off()

sticker("elliptic_icon.png", package="elliptic", p_size=80, s_x=0.975, s_y=1.3,
s_width=1.6,asp=sqrt(3)/2, white_around_sticker=TRUE, h_fill="#7733FF", dpi=1000,
h_color="#000000", filename="elliptic.png")

