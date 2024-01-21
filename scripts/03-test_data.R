#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]
cleaned_data <-
  raw_data |>
  rename(Min_Delay = "Min Delay", Min_Gap = "Min Gap")|>
  select(Date, Time, Day, Station, Min_Delay, Line) |>
  filter(Min_Delay > 0) %>% 
  group_by(Line) %>%
  summarise(Mean_Delay = mean(Min_Delay),n = n()) |>
  filter(n > 100) |>
  arrange(-n) 
#### Test data ####
