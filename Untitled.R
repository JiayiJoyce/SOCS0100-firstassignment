install.packages("groundhog")


library("groundhog")

pkgs <- c("tidyverse","skimr","dplyr")

groundhog.library(pkgs, "2023-11-06")
energy_and_fuel %>% 
  dplyr::filter(Entity== "China") 
p_help(pacman)  

if (!require("groundhog")) {
  install.packages("groundhog")
}
pkgs <- c("tidyverse","skimr","dplyr")
groundhog.library(pkgs, "2023-11-04")
