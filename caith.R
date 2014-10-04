install.packages('MASS')
library('MASS')
head(caith)
#1. In the caith dataset there are four observations of five variables. The observations are blue, light, medium and dark while the variables are fair, red, medium, dark and black.
Require(MASS)
data(caith)
EyeColor <-rowSums(caith)
EyeColor
#2. The rows blue, light, medium and dark and their totals across the variables are here. 