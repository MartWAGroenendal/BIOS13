bubble_sort<-function(v){
  repeat{
    FLAG<-TRUE
    for(i in 1:(length(v)-1)){
      if(v[i]>v[i+1]){
        replacing<-v[i+1]
        v[i+1]<-v[i]
        v[i]<-replacing
        FLAG<-FALSE
      }
    }
    if (FLAG) break
  }
  return(v)
}
