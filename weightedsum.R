#weighted sum of input vector
weightedsum=function(v, w){
  weightedsum=v%*%w
  #%*% gives the dot product
  return(weightedsum)
}