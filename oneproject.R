#Project 1
#calculate min and max
vec <-c (1:30)
min = function (vec) {
  themin = Inf
  for (i in 1:length(vec)) {
    if (!is.na(vec[i]) & vec[i] <themin) {
      themin = vec[i]
    }
  }
  return(themin)
}
print(min(vec))
max = function (vec) {
  themax = Inf
  for (i in 1:length(vec)) {
    if (!is.na(vec[i]) & vec[i] > themax) {
      themax = vec[i]
    }
  }
  return(themax)
}
print(max(vec))
#missing numbers in the vector
number= function(vec) {
  n= sum ( is.na(vec))
  return (n)
}
print (number(vec))
#mean
mean = function(vec) {
  equals= 0
  n = 0
  for (i in 1:length(vec)) {
    if (!is.na(vec[i])) {
      equals = equals + vec[i]
      n = n +1
    }
    avg = total / n
  }
  return(avg)
}
print (mean(vec))
#standard deviation
dev = function(vec) {
  square = 0
  avg = mean(vec)
  x = length(vec)-number(vec)
  for (i in 1:length(vec)) {
    if (!is.na(vec[i])) {
      square = square + (vec[i] -avg)^2
    }
  }
  variance = square / (x-1) 
  dev = sqrt(variance)
  return(dev)
}
print (mean(vec))
#median
median = function(vec) {
  vec = sort(vec)
  if (length(vec) == 1) {
    med = vec[1]
  }
  else if (length(vec) %% 2 == 1) {
  
    med = vec[ceiling(length(vec)/2)]
  }
  return (med)
}
print (median(vec))
#2nd Quartile
print (median(vec))
#1st Quartile
med = median(vec)
vec_half = vec[vec < med]
quartile = median(vec_half)
print (quartile(vec_half))

#3rd Quartile
vec_half = vec[vec > med]
quartile = median(vec_half)
print (quartile(vec_half))

