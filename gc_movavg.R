require(scales)
library('seqinr')

setwd("C:/Users/mwagr/OneDrive/Documenten/MSc Evolutionary Biology/Modelling Biological Systems BIOS13/Week 2")
mito_fasta<-read.fasta('NC_012920.fasta')
dnaseq <- mito_fasta$NC_012920.1
gc_movavg=function(dnaseq){
  l = length(dnaseq)
  framesize=200
  bases = c("a", "c", "g", "t","n")
  amount=floor(l/framesize)
  proportions=matrix(NA,length(bases),amount+1)
  residual=l-(amount*framesize)
  count = rep(0, length(bases))
  for (i in 1:amount) {
    for (ii in 1:framesize){
      for (j in 1:length(bases)) {
        if (dnaseq[((i-1)*framesize)+ii] == bases[j]){
          count[j] <- count[j] + 1
          break
        }
      }
    }
    proportions[,i]=count/framesize
    count=rep(0, length(bases))
  }
  for (ii in 1:residual){
    for (j in 1:length(bases)) {
      if (dnaseq[(i-1)*framesize+ii] == bases[j]){
        count[j] <- count[j] + 1
        break
      }
    }
    proportions[j,i+1]=count[j]/residual
  }
  prop<-proportions
  print(prop)
  return(prop)
}   

colour=c("green","blue","black","red", "purple")
for (i in 1:nrow(prop)){
  if (i==1){
plot(1:ncol(prop),prop[i,], type='l',col=colour[i],
     xlab="Frame number",
     ylab="Base frequency",
     main="Base frequencies per frame (A:green, C:blue, G:black, T:red, N:purple")
  }else{
    lines(1:ncol(prop),prop[i,], col=colour[i])
  }
}

plot(1:ncol(prop),prop[1,], type='l',col='white',
     xlab="Frame number",
     ylab="Base frequency",
     main="Base frequencies per frame (A:green, C:blue, G:black, T:red, N:purple")
colour=c("green","blue","black","red", "purple")
for (i in 1:nrow(prop)){
  for (j in 1:ncol(prop)){
    lines(c(j-1,j),rep(prop[i,j],2),col=colour[i],
         xlab="Frame number",
         ylab="Base frequency",
         main="Base frequencies per frame (A:green, C:blue, G:black, T:red, N:purple")
  }
}
 
