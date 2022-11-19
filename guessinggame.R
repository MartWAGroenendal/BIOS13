rm(list=ls())
x<-sample.int(20,1)
guess=x+1
tries=0
while(guess!=x){
    print("Guess a number between 1 and 20")
    guess<-scan(nmax=1)
            if (guess<x){
              print("Guess higher")
            }else{
              print("Guess lower")
            }
    tries=tries+1
}
cat("Good job! It took you", tries, "tries")
