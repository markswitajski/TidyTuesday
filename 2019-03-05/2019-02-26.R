setwd("~/TidyTuesday/2019-02-26")
library(tidyverse)

trains_raw <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")
small_trains <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/small_trains.csv") 
reviews <- readr::read_csv("Google Reviews.csv")

df <- merge(x = small_trains, y = reviews, by = "departure_station")

plot <- 
    ggplot(data = df, aes(x = avg_delay_all_departing, y = avg_delay_all_arriving)) +
    geom_point(aes(size = Google_Review_Score)) +
    scale_y_reverse()

plot
