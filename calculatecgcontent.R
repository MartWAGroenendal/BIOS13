require(scales)
# setwd("C:/Users/mwagr/OneDrive/Documenten/MSc Evolutionary Biology/Modelling Biological Systems BIOS13/Week 2")
# mito_fasta<-read.fasta('NC_012920.fasta')
mito_fasta<-read.fasta('NC_012920.fasta')
dnaseq <- mito_fasta$NC_012920.1
# dnaseq=c("A","C","G","T","T","A","C")
nucleo_content = function(dnaseq) {
  l = length(dnaseq)
  bases = c("a", "c", "g", "t","n")
  count = rep(0, length(bases))
  for (i in 1:l) {
    for (j in 1:length(bases)) {
      if (dnaseq[i] == bases[j]){
        count[j] <- count[j] + 1
        break
      }
      
    }
  }
  
  
  proportions<-count/l
  proportions<-percent(proportions,accuracy=0.01)
  basefrequencies=cbind(bases,proportions)
  return(basefrequencies)
}