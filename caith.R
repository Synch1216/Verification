install.packages('MASS')
library('MASS')
head(caith)
#1. In the caith dataset there are four observations of five variables. The observations are blue, light, medium and dark while the variables are fair, red, medium, dark and black.
Require(MASS)
data(caith)
EyeColor <-rowSums(caith)
EyeColor
#2. The rows blue, light, medium and dark and their totals across the variables are here.
#3:
hairColor <- colSums(caith)
hairColor
#4. Medium is the most common eye color.
hist(EyeColor)
#5. This reassigns the dataset caith as a matrix named caitha.
caitha <- as.matrix(caith)
caitha
#6. This creates a plot for each eye color and then subdivides the bars to illustrate the variables of hair color.
barplot(t(as.matrix(caith)), beside=TRUE)
#7.
barplot(t(as.matrix(caith)), beside=TRUE)
#8. There is a correlation between medium and dark eyes being prominent on medium and darker hair colors.
barplot(t(as.matrix(caith)), beside=TRUE)