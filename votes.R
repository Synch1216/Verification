#1. What is the sum of votes?
# What is total of Glasgow voters?
#What is the total of Yes votes?

#2
Choice <-c("Yes","Yes","No","No","Yes","Yes","No","No")
Age <-c("16-14","25+","16-14","25+","16-14","25+","16-14","25+",)
Location <-c("Edinburgh","Edinburgh","Edinburgh","Edinburgh","Glasgow","Glasgow","Glasgow","Glasgow")
Votes <-c(80100, 143000, 35900, 214800, 99400, 150400, 43000, 207000)
frame <- data.frame(Location, Age, Choice, Votes)
frame

#3.
install.packages("devtools")