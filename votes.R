#1. What is the sum of votes?
# What is the percent who voted Yes?
#What is the percent who voted No?

#2
Choice <-c("Yes","Yes","No","No","Yes","Yes","No","No")
Age <-c("16-14","25+","16-14","25+","16-14","25+","16-14","25+")
Location <-c("Edinburgh","Edinburgh","Edinburgh","Edinburgh","Glasgow","Glasgow","Glasgow","Glasgow")
Votes <-c(80100, 143000, 35900, 214800, 99400, 150400, 43000, 207000)
dframe <- data.frame(Location, Age, Choice, Votes)
dframe

#3.
install.packages("devtools")
devtools::install_github("hadley/tidyr")
require(tidyr)
library(tidyr)
dframe
  gather( dframe, key, value, starts_with('Location'))

#4
#total votes
require (plyr)
library (plyr)
dtotal <- summarise(dframe, total=sum(Votes))
dtotal

# Percentage of Yes Votes
Yes <- dframe %>% select (Votes) %>%
  filter (Choice == 'Yes') %>%
  summarise(sum(Votes))
yesvotes <- Yes/dtotal
yesvotes

# Percentage of No Votes
No <- dframe %>% select (Votes) %>%
  filter (Choice == 'No') %>%
  summarise(sum(Votes))
novotes <- No/dtotal
novotes

#5. I think that more useful questions to ask would have been to find out the percentages of No votes by age range.
