fibo=function(n){
  Constant=(1+sqrt(5))/2
  fibov=c()
  y=c()
  fibov[1]=1
  fibov[2]=1
  ratio=c()
  ratio[1]=1
  ratio[2]=2
  for (i in 1:n){
    y[i]=(Constant^i)/sqrt(5)
    if (i>=3){
      fibov[i]=fibov[i-1]+fibov[i-2]
      ratio[i]=fibov[i]/fibov[i-1]
      }
  }
  plot(1:n,y, type='b', lty='solid', col='red')
  lines(1:n,fibov,type='b', lty='dashed')
  plot(1:n,ratio, type='b')
  abline(h = Constant)
}
