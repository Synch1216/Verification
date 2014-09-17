#Project 1
vec <-c (1:30)
calc_min = function (vec) {
  themin = Inf
  for (i in 1:length(vec)) {
    if (!is.na(vec[i]) & vec[i] <themin) {
      themin = vec[i]
    }
  }
  return(themin)
}
calc_max = function (vec) {
  # find the max value of a vector
  themax = Inf
  for (i in 1:length(vec)) {
    if (!is.na(vec[i]) & vec[i] > themax) {
      themax = vec[i]
    }
  }
  return(themax)
}
