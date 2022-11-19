Kmax=10
kn=10
n=100
c=seq(0,100,1)

dcdt=function(c,Kmax,kn,n) return(-(Kmax*c*n)/(kn+c))

plot(c,dcdt(c,Kmax,kn, n), type='l')

I=10 #inflow
mu=20 #outflow
dcdtI=function(c,Kmax,kn,n, I, mu) return(I-(mu*c)-(Kmax*c*n)/(kn+c))
plot(c,dcdtI(c,Kmax,kn, n, I, mu), type='l')
abline(NULL,NULL,h=0)
