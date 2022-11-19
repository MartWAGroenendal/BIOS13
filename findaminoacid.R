# setwd("C:/Users/mwagr/OneDrive/Documenten/MSc Evolutionary Biology/Modelling Biological Systems BIOS13/Week 2")
# library('seqinr')
# library('tidyverse')
# mito_fasta<-read.fasta('NC_012920.fasta')
# dnaseq <- mito_fasta$NC_012920.1
aminoacid=function(dnaseq, rf){
  Base1 = "TTTTTTTTTTTTTTTTCCCCCCCCCCCCCCCCAAAAAAAAAAAAAAAAGGGGGGGGGGGGGGGG"
  Base2 = "TTTTCCCCAAAAGGGGTTTTCCCCAAAAGGGGTTTTCCCCAAAAGGGGTTTTCCCCAAAAGGGG"
  Base3 = "TCAGTCAGTCAGTCAGTCAGTCAGTCAGTCAGTCAGTCAGTCAGTCAGTCAGTCAGTCAGTCAG"
  amino = "FFLLSSSSYY**CCWWLLLLPPPPHHQQRRRRIIMMTTTTNNKKSS**VVVVAAAADDEEGGGG"
  bb=NULL
  amino=unlist(strsplit(amino, ''))
  l=list(Base1, Base2, Base3)
  for (i in 1:length(l)){
    l[[i]]<-tolower(l[[i]])
    bb<-paste0(bb,unlist(strsplit(l[[i]], '')))
  }
  
  protein=NULL
  for (i in seq(rf,length(dnaseq)-2, by=3)){
    threepair<-str_flatten(dnaseq[i:(i+2)],'')
    if(any(bb==threepair)){
      protein=append(protein, amino[which(bb==threepair)])
    }
  }
  protein<-str_flatten(protein,'')
  return(protein)
}
