rm(list=ls())
length<-readline("What is the length of the vector")
cat("Give me a vector of length=", length)
a<-scan(nmax=length)
cat("Give me a vector of length=", length)
b<-scan(nmax=length)
v=c()
for(i in 1:length){
  cat(v,a[i],b[i])
}