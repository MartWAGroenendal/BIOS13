rm(list=ls())
x=c()
x[1]<-0
iter<-readline("Number of iterations:")
iter<-as.numeric(iter)
for(j in 1:10){
  for (i in 2:iter){
    x[i]=x[i-1]+rnorm(1)
    }
  if(j==1) {
    plot(x,type='l')
  } else{
    lines(x)
  }
}