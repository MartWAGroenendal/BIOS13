rm(list=ls())
library("deSolve")
# r=2
# a=0.2
# mu=0.15
timevec=seq(0,20,0.1)
params<-list("r"=1.2,"a"=0.1,"mu"=0.4)

LV_sys <- function(t, np, params) { 
  # extract vector content:
  n <- np[1]
  p <- np[2]
  r<-params$r
  a<-params$a
  mu<-params$mu
  # calculate the two growth rates:
  dndt=(r*n)-(a*n*p)
  dpdt=(a*n*p)-(mu*p)
  return(list(c(dndt, dpdt ))) # the result as a vector in a list
}

out <- ode( y = c(2,3), func = LV_sys, t = timevec, parms = params)

# plot the prey densities in blue:
plot(out[,1], out[,2], ylim=c(0,25),type="l", col="blue") 
# add the predator densities in red:
lines( out[,1], out[,3], col="red" ) 

plot(out[,2],out[,3],type="l",
     xlab="Prey",
     ylab="Predator")
