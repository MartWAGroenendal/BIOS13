rm(list=ls())
deriv=function(Nt, r0, K, delt){
  N=Nt[1]
  t=Nt[2]
  dN=r0*N*(1-N/K)
  N=N+dN*delt
  t=t+delt
  Nt=c(N,t)
  print(Nt)
  return(Nt)
}


euler=function(Nt,delt, K, r0, time, pop,iter=0){
  while (Nt[1]<(K-0.01) & iter<1000){
    Nt<-deriv(Nt, r0, K, delt)
    time=append(time, Nt[2])
    pop=append(pop,Nt[1])
    iter=iter+1
  }
  matt=cbind(time, pop)
  return(matt)
}

