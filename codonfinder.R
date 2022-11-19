# setwd("C:/Users/mwagr/OneDrive/Documenten/MSc Evolutionary Biology/Modelling Biological Systems BIOS13/Week 2")
# library('seqinr')
# mito_fasta<-read.fasta('NC_012920.fasta')
# dnaseq <- mito_fasta$NC_012920.1
find_codon=function(dnaseq,codon, rf){
  positions=NULL
  codon<-unlist(strsplit(codon,''))
  for (i in seq(rf, length(dnaseq)-2, by=3)){
    if (all(codon==dnaseq[i:(i+2)])){
      positions=append(positions, i)
    }
  }
  return(positions)
}
