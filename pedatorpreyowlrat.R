o0=2000
r0=1000
initial=c(o0,r0)
t=20
x=array(dim=c(2,t))
x<-cbind(initial, x)
A<-matrix(c(0.5,-0.2,0.3,1.2),2,2)
for (i in 1:t){
  x[1:2,i+1]<-A%*%x[1:2,i]
}
plot(1:(t+1),x[1,], las=1, 
     col='brown', type='b', main="Predator-Prey model",
     xlab="generation",
     ylab='population')
lines(1:(t+1),x[2,], col='gray', type='b')
plot