r=10
a=1
mu=4
LV_isoclines<-function(r,a,mu){
  # dndt=r*n-a*n*p
  # dpdt=a*n*p-mu*p
  pp=r/a
  nn=mu/a
  isos=c("preyiso"=pp, "prediso"=nn, "preytriv"=0,"predtriv"=0)
  plot(x=1,y=1, las=1,col="white",xlim=c(0,5),ylim=c(0,5),
       xlab="Prey", ylab="Predator")
  abline(NULL,NULL, h=isos["predtriv"], col="orange", lwd=3)
  abline(NULL,NULL, v=isos["preytriv"], col="green", lwd=3)
  abline(NULL,NULL, v=isos["prediso"], col="orange", lwd=3)
  abline(NULL,NULL, h=isos["preyiso"], col="green", lwd=3)
  legend(3,3, legend=c("Predator", "Prey"),
         col=c("Orange", "Green"), lty=1:2, cex=0.8,
         title="Actors", text.font=4, bg='darkseagreen1')
  return(isos)
}
