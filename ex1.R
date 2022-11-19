rm(list=ls())
v1=seq(1,7,length=13)
# could also have used seq(1,7,by=0.5)
v2<-v1[c(3,4,11)]
v2[v2>2]<-0
cat(v2)
