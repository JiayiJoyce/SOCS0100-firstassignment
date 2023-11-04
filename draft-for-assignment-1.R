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

energy_and_fuel <- read_csv("Number of people with and without energy access (OWID based on World Bank, 2021).csv")
# need to know how to describe structure and contextual relevance. the variable is already known

###Below are everything related to data wrangling.
#first, created new variables
#use janitor
mutated_energy_and_fuel <- energy_and_fuel %>%
  mutate(total_population = `Number of people with access to electricity` +`Number of people without access to electricity`) %>%
  mutate(percentage_with_electricity_access= `Number of people with access to electricity` / `total_population`) %>%
  mutate(percentage_with_clean_fuel_access= number_with_clean_fuels_cooking/total_population)
#use janitor to clean it than automate filtering
# this i really want to make a function out of
filtered_df <- mutated_energy_and_fuel %>% filter(Entity %in% c("China", "United Kingdom", "United States", "Russia", "France"))

filtered_df %>%
  group_by(Year) %>%
  summarize(
    avg_access_electircity = mean(`Number of people with access to electricity`, na.rm = TRUE) %>% round(2),
    avg_access_fuel = mean(number_with_clean_fuels_cooking, na.rm = TRUE) %>% round(2)
    
  )
#unfilter zero to avoid sharp plunge in data
print(filtered_df, n = 30)

  