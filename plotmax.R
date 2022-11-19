rm(list=ls())
plotmax=function(n){
  v<-runif(n)
  plot(1:n,v,col='blue', type='l')
  u=v[2:length(v)]-v[1:(length(v)-1)]
  w=v[1:(length(v)-1)]-v[2:length(v)]
  u<-append(u, 0, 0)
  w<-append(w, 0)
  # cat("u", u, "w", w, "v", v, "vv", vv)
  vv=v[u>=0 & w>=0]
  print(vv)
  pos=which(u>=0 & w>=0)
  print(pos)
  points(pos, vv, col='red', type='p', pch=4)
}