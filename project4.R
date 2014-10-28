devtools::install_github("hadley/devtools")
devtools::install_github("hadley/rvest")
library(rvest)
hobbit <- html("http://www.rottentomatoes.com/m/the_hobbit_the_desolation_of_smaug/reviews/")
score <- hobbit %>% 
  html_nodes("span.tMeterScore") %>%
  html_text() %>%
  as.numeric()
score

