# Dplyr
require(dplyr)
library (dplyr)
cars <- mtcars %>%
  select (cyl,mpg, wt, am)%>%
  filter (mpg>20)

avgmpg <- apply (mtcars, 2, mean)
avgmpg
avgwt <- apply (mtcars, 7, mean)
avgwt
aggregate (cbind(mpg,wt) ~cyl + am, m, mean) %>%
