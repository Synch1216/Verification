devtools::install_github("hadley/devtools")
devtools::install_github("hadley/rvest")
library(rvest)
hobbit <- html("http://www.rottentomatoes.com/m/the_hobbit_the_desolation_of_smaug/reviews/")
score <- hobbit %>% 
  html_nodes(".tMeterScore") %>%
  html_text()
score
# Pulled the ratings of The Hobbit movie from Rotten Tomatoes.
