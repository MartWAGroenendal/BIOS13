Jacobian_K=function(params){
  J=matrix(0,2,2)
  r<-params$r
  a<-params$a
  mu<-params$mu
  K<-params$K
  c=1
  # calculate the two growth rates:
  # dndt=(r*n)-(a*n*p)
  # dpdt=(a*n*p)-(mu*p)
  ne=mu/(c*a)
  pe=r/a
  J[1,1]=r-(a*pe)-2*r/K #only this one changes
  J[1,2]=-a*ne
  J[2,1]=c*a*pe
  J[2,2]=(c*a*ne)-mu
  return(J)
}
