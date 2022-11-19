# setwd("C:/Users/mwagr/OneDrive/Documenten/MSc Evolutionary Biology/Modelling Biological Systems BIOS13/Week 2")
# library('seqinr')
# library('tidyverse')
# mito_fasta<-read.fasta('NC_012920.fasta')
# dnaseq <- mito_fasta$NC_012920.1
find_all_open_frames=function(dnaseq, rf){
  start=NULL
  stop=NULL
  startcodons=c("atg", "ata", "att", "atc", "gtg")
  stopcodons=c("taa", "tag", "aga", "agg")
  inorout="out"
  for (i in seq(rf, length(dnaseq)-2, by=3)){
    threepair<-str_flatten(dnaseq[i:(i+2)],'')
    if (inorout=="out" && any(startcodons==threepair)){
      start=append(start, i)
      inorout="in"
    }
    if(inorout=="in" && any(stopcodons==threepair)){
      stop=append(stop, i+2)
      inorout="out"
    }
  }
  if (length(start)>length(stop)){
    start<-start[-length(start)]
  }
  positions=cbind(start,stop)
  return(positions)
}
