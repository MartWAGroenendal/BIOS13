rm(list=ls())
library(ggplot2)
x<-0:100
my_g<-ggplot(NULL, aes(x=x,y=sin(x)))
my_g+geom_line()
