# setwd("C:/Users/mwagr/OneDrive/Documenten/MSc Evolutionary Biology/Modelling Biological Systems BIOS13/Week 2")
# library('seqinr')
# library('tidyverse')
# mito_fasta<-read.fasta('NC_012920.fasta')
# dnaseq <- mito_fasta$NC_012920.1
stopcodon=function(dnaseq, rf){
  positions=NULL
  stopcodons=c("taa", "tag", "aga", "agg")
  for (i in seq(rf, length(dnaseq)-2, by=3)){
    threepair<-str_flatten(dnaseq[i:(i+2)],'')
    if (any(stopcodons==threepair)){
      positions=append(positions, i)
    }
  }
  return(positions)
}
