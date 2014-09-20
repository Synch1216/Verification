# 1.
#Obtain: The first step is to collect appropriate and relevant data.
# Scrub: Once the data is collected it must be put into a useable format that is consistent.
# Explore: Ordering the information in a descriptive way.
# Model: Predicting future trends based on information you have collected.
# Interpret: Coming up with future expirements based on what you've learned from the information.

#2.
# I believe that well-designed function interfaces and data structures decently implemented would yield a better program because whatever project the program is used on will have all the information interpreted in a way that produces the maximum predictive value.

#3.
sys.Date()

#4. You would use POSIXlt over POSIXct date class when you want to extract elements of a date and use it for something.

#5
as.Date("2014-09-19")- as.Date("1916-04-30")

#7
thedate <- "09-19-2014"
dadate <- as.Date(thedate, "%m-%d-%Y"); dadate


#8
install.packages(lubridate)
library(lubridate)
date <- dmy ("19-09-2014")
month(date)

#9
seq(ISOdate(2005,1,1), ISOdate(2014,1,1), by = "day")

#10. stringsAsFactors=F