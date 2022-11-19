rm(list=ls())
N=seq(1,150,0.2)
r0=1
K=100
dN=r0*N*(1-N/K)
par(mfrow=c(1,2))
plot(N,dN, type='l',
     main="N vs. dN/dt")
abline(NULL,NULL,0)




n0=1
params=c(n0=n0,r0=r0,K=K)
tim=seq(0,20,0.5)

Nt=function(tim,n0,r0,K){
  NN=K/(1+((K/n0)-1)*exp(-r0*tim))
  return(NN)
}

NN<-Nt(tim,n0,r0,K)
plot(tim, NN,type='l',
     xlab="time",
     ylab="N",
     main="population over time")

dNN=diff(NN)
dNN=append(dNN,0,1)
plot(NN,dNN)
