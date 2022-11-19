rm(list=ls())
tim=seq(0,200,1)
vars=c(n=4)
params<-c(K=40,r0=0.5,h=0.4)

dNdt=function(t,state,parameters){
  with(as.list(c(state, parameters)),{
  dN=r0*n*(1-n/K)
  return(list(dN))
  })
}

sol <- ode(y = vars, times = tim, func = dNdt, parms = params)

plot(sol,
     main="Without fishing")
N=seq(0,30,0.5)
r0=2
K=20
plot(N, r0*N*(1-N/K), type='l')
plot(N,dNdt, type='l')
abline(NULL,NULL,0)

fishing=function(t,state,parameters){
  with(as.list(c(state, parameters)),{
    dN=r0*n*(1-n/K)-h*n
    return(list(dN))
  })
}
solfish <- ode(y = vars, times = tim, func = fishing, parms = params)
plot(solfish,
     main= "Fishing with h=0.4")