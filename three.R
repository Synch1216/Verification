#1. How many numbers are not divisible by any of 3,7, and 11?

a=0
nums = c(3,7,11)
for ( i in 1:1000 ) {
  if (all(( i %% 3) !=0)) {
    a= a +1
  }
}
#print("# Answer for 3")
print(a)
for ( i in 1:1000 ) {
  if (all(( i %% 7) !=0)) {
    a= a +1
  }
}
#print("Answer for 7")
print(a)
for ( i in 1:1000 ) {
  if (all(( i %% 11) !=0)) {
    a= a +1
  }
}
print("#answer for 11")
print(a)
#2. 
number= function(vec) {
  n= sum ( is.na(vec))
  return (n)
}
vec= c(5,7,9)
vec = c(5, NAN ,7, NAN ,9)
print (number(vec))

#3
x <- 8:1
y <- 16:9
theDF <-data.frame(x,y)
framed = function(theDF){
  missing= NULL
  c= ncol(theDF)
  for (i in 1:c){
    col_name= colnames(theDF)[i]
    n_missing=number(theDF[col_name])
    missing[col_name]= n_missing
  }
  return (missing)
}
  print(framed(theDF))

