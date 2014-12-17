library(RPostgreSQL)
con = dbConnect(PostgreSQL(), user="postgres", dbname="flights",password="champion")
out= dbGetQuery(con, "select * from flights limit 5")

