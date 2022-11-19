params<-list("r"=1.2,"a"=0.1,"mu"=0.4)
timeandperiod=function(params){
source("Jacobian.R")
J<-Jacobian(params)
E=eigen(J)
r<-Re(E$vectors)
rettime=-1/max(Re(E$values))
period=2*pi/(max(Im(E$values)))
return(list("rettime"=rettime, "period"=period))
}