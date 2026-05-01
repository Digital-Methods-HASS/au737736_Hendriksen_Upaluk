rooms <- c(1, 5, 2, 3, 1, NA, 3, 1, 3, 2, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA, 4, 3 ,1 ,7 ,2 ,1 ,NA ,1, 1, 3)
rooms<2
rooms_withoutNA <- rooms[!is.na(rooms)]
rooms_false_numbers <- rooms_withoutNA[rooms_withoutNA>2]
length(rooms_false_numbers)

class(rooms)
median(rooms,na.rm = TRUE)

dir.create("data")

download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv", mode = "wb"
) 

install.packages("tidyverse")

library(tidyverse)
read_csv("data/SAFI_clean.csv") 

interview <- read.csv("data/SAFI_clean.csv")

Monarker <- read.csv2("data/Monarker.csv")

mean(Monarker[[3]]-Monarker[[2]],na.rm = TRUE)

median(Monarker[[3]]-Monarker[[2]],na.rm = TRUE)
