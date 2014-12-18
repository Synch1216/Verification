require(hflights)
library(RPostgreSQL)

con = dbConnect(PostgreSQL(), user="postgres", dbname="flights",password="champion")
out= dbGetQuery(con, "select * from flights limit 5")
out
head(hflights,2)
install.packages("sqldf")
install.packages("proto")
flights <- tbl_df (hflights)
houston <- na.omit(flights)
head(houston,2)
mean(houston$ArrDelay)
# The average arr_delay from hflights is over 7, while for the flights database it is around 6.8. I would rather fly out of NYC.
#Convert to .csv file.
write.csv(houston, "houston.csv", row.names=F)
