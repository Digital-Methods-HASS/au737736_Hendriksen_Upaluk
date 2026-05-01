#Starting visualisation
install.packages("tidyverse")
library(tidyverse)

kings <- read_csv2("data/Monarker.csv", na = c("NULL", "NA"))

glimpse(Monarker)
head(Monarker)

kings %>%
 mutate(Duration = Reign_End - Reign_start) %>%  
 mutate(Midyear = Reign_End - Duration/2) %>%  
 ggplot(aes (x = Midyear, y = Duration)) +
 geom_point(col = "blue") +  
 geom_smooth() +
 theme_classic()   
   