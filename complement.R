create_complement=function(dnaseq){
  matchess=cbind(c("a","c","g","t", "n"),c("t","g","c","a","n"))
  compl=dnaseq[length(dnaseq):1]
  for (i in 1:length(compl)){
  compl[i]<-matchess[which(matchess[,1]==compl[i]),2]
  }
  return(compl)
  }
