# week9quiz.R
# [For your convenience], here is the provided code from Jared Lander's R for Everyone, 
# 6.7 Extract Data from Web Sites

install.packages("XML")
require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
bowlPool

# 1. What type of data structure is bowlpool? 
# Data Frame

# 2. Suppose instead you call readHTMLTable() with just the URL argument,
# against the provided URL, as shown below

theURL <- "http://www.w3schools.com/html/html_tables.asp"
hvalues <- readHTMLTable(theURL)
str(hvalues)

# What is the type of variable returned in hvalues?
#list of 7

# 3. Write R code that shows how many HTML tables are represented in hvalues
str(hvalues)

# 4. Modify the readHTMLTable code so that just the table with Number, 
# FirstName, LastName, # and Points is returned into a dataframe
readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)

# 5. Modify the returned data frame so only the Last Name and Points columns are shown.
modify <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
modify[,c(3,4)]
# 6 Identify another interesting page on the web with HTML table values.  
# This may be somewhat tricky, because while
# HTML tables are great for web-page scrapers, many HTML designers now prefer 
# creating tables using other methods (such as <div> tags or .png files).  
#http://www.fantasyfootballhub.com/#sthash.h3beW0GL.dpbs . This is a fantasy football website.
# 7 How many HTML tables does that page contain?
# Nine
# 8 Identify your web browser, and describe (in one or two sentences) 
# how you view HTML page source in your web browser.
#I use Firefox. I right click on the page and click "View Page Source".

