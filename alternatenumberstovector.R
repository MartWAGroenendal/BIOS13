rm(list=ls())
print("Give me a vector of length=3")
a<-scan(nmax=3)
print("Give me a vector of length=3")
b<-scan(nmax=3)
v=c()
for(i in 1:3){
  cat(v,a[i],b[i])
}