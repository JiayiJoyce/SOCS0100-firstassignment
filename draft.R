setwd("/Users/chenjiayi/Desktop/Computational/First-Summative-Assignment") #setting working directory to the file
rm(list = ls())#clearing all object from workspace to create a clean environment

if (!require("pacman")) {
  install.packages("pacman")
}
pacman::p_load(
  tidyverse, 
  kableExtra,
  flextable, 
  skimr,
  glue
  )
### Above are all prerequisite packages for the project. For improvement: integrate groundhog.###

#Part I-A Data exploration and contextualisation
# 1. 
energy_access <- read_csv("Number of people with and without energy access (OWID based on World Bank, 2021).csv")
glimpse(energy_access)
summary(energy_access)
names(energy_access)
list_of_countries <- energy_access %>% distinct(Entity)
list_of_countries
missing_counts <- colSums(is.na(energy_access))
missing_counts
# need to know how to describe structure and contextual relevance. the variable is already known

###Below are everything related to data wrangling.
total_pop_added <- energy_access %>%
  mutate(total_population = `Number of people with access to electricity`+`Number of people without access to electricity`) 

