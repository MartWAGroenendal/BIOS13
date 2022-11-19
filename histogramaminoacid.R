## find the aminoa cid composition of the longest reading frame


rm(list=ls())
setwd("C:/Users/mwagr/OneDrive/Documenten/MSc Evolutionary Biology/Modelling Biological Systems BIOS13/Week 2")
library('seqinr')
library('tidyverse')
mito_fasta<-read.fasta('NC_012920.fasta')
dnaseq <- mito_fasta$NC_012920.1
source("findaminoacid.R")
source("complement.R")
source("findopenreadingframes.R")
source("whichorf.R")
compli=create_complement(dnaseq)
ll=list(dnaseq,compli)

lengths<-whichorf(dnaseq)
pos=which(lengths == max(lengths), arr.ind = TRUE)
posi=find_all_open_frames(ll[[pos[1]]],pos[2])
posii=posi[which.max(posi[,2]-posi[,1]),]
posiii=unname(posii)
sequ=ll[[pos[1]]]
protein<-aminoacid(sequ[posiii[1]:posiii[2]],1)
aafreq=count_chars(protein)
aaa=aafreq[sort(names(aafreq))]
barplot(aaa, main="Amino acid occurrences")
