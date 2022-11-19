rm(list=ls())
name="ANNA"
is_palindrome=function(name){
  repeat {
    FLAG=TRUE
    for (i in 1:nchar(name)){
      if (substr(name,i,i)!=substr(name, nchar(name)-i+1,nchar(name)-i+1)){
      FLAG=FALSE
      }
    }
    if (!FLAG) break
    else {
      print("PALINDROME")
      break
    }
    }
}

