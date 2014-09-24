#1. I ended up with 27 observations of 8 variables in the result. It is what I would expect because the price chart had 27 rows.
#2. Code below also includes all of price data table.
setwd('~/Desktop')
getwd()
price <- read.csv('~/Desktop/week-4-price-data.csv', header=T)
price
model <- read.csv('~/Desktop/week-4-make-model-data.csv', header=T)
model
priceModel.df = merge(price, model)
priceModel.df

# 3. Only 2010 vehicles included:
attach(priceModel.df)
names(priceModel.df)
priceModel.df[ModelNumber, 2010]
detach(priceModel.df)
priceModel.df[,1]
priceModel.df[,8]
attach(priceModel.df)
names(priceModel.df)
detach(priceModel.df)
subset(priceModel.df, Year = 2010, select c("Make", "Model"))

#4
subset(priceModel.df, Color = "Red","Price" > 10000 )
#5
priceModel.df[c(-1,-3)]
