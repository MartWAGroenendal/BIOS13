params<-list("r"=1.2,"a"=0.1,"mu"=0.4, "K"=20)

LV_K_isoclines<-function(params){
  # dndt=r*n-a*n*p
  # dpdt=a*n*p-mu*p
  r<-params$r
  a<-params$a
  mu<-params$mu
  K<-params$K
  pp=(r/a)*(1-(mu/(a*K)))
  nn=mu/a
  isos=c("preyiso"=pp, "prediso"=nn, "preytriv"=0,"predtriv"=0)
  plot(x=1,y=1, las=1,col="white",xlim=c(0,20),ylim=c(0,20),
       xlab="Prey", ylab="Predator")
  abline(NULL,NULL, h=isos["predtriv"], col="orange", lwd=3)
  abline(NULL,NULL, v=isos["preytriv"], col="green", lwd=3)
  abline(NULL,NULL, v=isos["prediso"], col="orange", lwd=3)
  abline(NULL,NULL, h=isos["preyiso"], col="green", lwd=3)
  legend(10,15, legend=c("Predator", "Prey"),
         col=c("Orange", "Green"), lty=1:2, cex=0.4,
         title="Actors", text.font=4, bg='darkseagreen1')
  return(isos)
}
# for there to be predators (1/a)>mu/(K*a^2)