rm(list=ls())
sentence <- readline("type a sentence")
v=c("a","e","i","o","u","y")
vowels=c()
lengte=nchar(sentence)
for(i in 1:lengte){
  letter=substr(sentence,i,i)
  if (letter %in% v){
    vowels<-c(vowels,letter)
  }
}