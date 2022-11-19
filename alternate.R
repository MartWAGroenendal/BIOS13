rm(list=ls())
alternate=function(a,b){
  print(a)
  cat("give me a vector of length", a)
  v<-scan(nmax=a)
  cat("give me a vector of length", b)
  w<-scan(nmax=b)
  x=c()
  for(i in 1:max(a,b)){
    if (i<=min(a,b)){
      x<-append(x,v[i])
      x<-append(x,w[i])
    }
    else if (a>b){
      x<-append(x,v[i])
    }
    else
      x<-append(x,w[i])
    }
  return(x)
}