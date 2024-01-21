#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)
library(dplyr)
#### Clean data ####
raw_data <- read_csv("inputs/data/raw_data.csv")

cleaned_data <-
  raw_data |>
  rename(Min_Delay = "Min Delay", Min_Gap = "Min Gap")|>
  select(Date, Time, Day, Station, Min_Delay, Line) |>
  filter(Min_Delay > 0) %>% 
  group_by(Line)
cleaned_data
#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
