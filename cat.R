rm(list=ls())
print("Give me a vector of length=3")
a<-scan(nmax=3)
print("Give me a vector of length=3")
b<-scan(nmax=3)
v=c()
d=[a, b]
for (j in 1:2){
  for (i in 1:3){
    cat(v,d[j][i])
  }
}
[[1 2 3] [4 5 6]]