library(stringr)
is_palindrome2=function(name){
v<-as.vector(str_split_fixed(name, pattern = "", n = nchar(name)))
w=v[length(v):1]
print(all(v==w))
}