setwd("C:/Users/mwagr/OneDrive/Documenten/MSc Evolutionary Biology/Modelling Biological Systems BIOS13/Week 2")
library('seqinr')
library('tidyverse')
mito_fasta<-read.fasta('NC_012920.fasta')
dnaseq <- mito_fasta$NC_012920.1

whichorf=function(dnaseq){
  source("complement.R")
  source("findopenreadingframes.R")
  compli<-create_complement(dnaseq)
  lengths=matrix(0,2,3)
  for (i in 1:3){
      positions<-find_all_open_frames(dnaseq,i)
      long=positions[,2]-positions[,1]
      lengths[1,i]<-max(long)
      positions<-find_all_open_frames(compli,i)
      long=positions[,2]-positions[,1]
      lengths[2,i]<-max(long)
  }
  return(lengths)
}

# lengths<-whichorf(dnaseq[1:500])
# pos=which(lengths == max(lengths), arr.ind = TRUE)
# cat("Maximum opening reading frame is on strand", pos[1],"with open reading frame", pos[2],"with a length of", max(lengths))