x <- seq(from=-4,to=4,len=800)
cis <- function(theta){cos(theta)+1i*sin(theta)}
z <- outer(x,1i*x,"+")*cis(-0.33)
view(x,x,limit(zeta(z,c(1+1i,2-3i)),upper=10),nlevel=16,scheme=-1,real=TRUE,imag=FALSE,drawlabels=FALSE)
