# First-Summative-Assignment

## What this project does

> First summative assignment for the SOCS0100 module.
>
> R script which processes and visualise data from the [share of the population with access to electricity and clean fuels for cooking](https://github.com/owid/owid-datasets/blob/master/datasets/Number%20of%20people%20with%20and%20without%20energy%20access%20(OWID%20based%20on%20World%20Bank%2C%202021)/Number%20of%20people%20with%20and%20without%20energy%20access%20(OWID%20based%20on%20World%20Bank%2C%202021).csv) dataset (World Bank, 2021)

This R script does the following:

1.  Performs three data-wrangling task to produce two refined datasets: income_based_entity and country_percentate_energy_and_fuel

2.  Produces reproducible data visualisation based on the refined dataset

## How users can get started with the project

> You need to download the [share of the population with access to electricity and clean fuels for cooking](https://github.com/owid/owid-datasets/blob/master/datasets/Number%20of%20people%20with%20and%20without%20energy%20access%20(OWID%20based%20on%20World%20Bank%2C%202021)/Number%20of%20people%20with%20and%20without%20energy%20access%20(OWID%20based%20on%20World%20Bank%2C%202021).csv) dataset and importing it into your directory in order to run the r-script

To install it, simply

1.  Download the dataset from the link, then drag it into the `~/DVHZ3-SOCS0100-Assignment` folder
2.  run the `energy_and_fuel <- read_csv("Number of people with and without energy access (OWID based on World Bank, 2021).csv")` line by **removing the \# in front of it** in order to import the csv file into the dataset under the shorthand name `energy_and_fuel`

## Acknowledgement and Contribution

While developing this project, I critically engaged with [ChatGPT](https://chat.openai.com/) during the process of code refining and editing.

The course material from SOCS0100 was very helpful, including the book [R for Data Science](https://r4ds.hadley.nz/)

I also consulted sources from [Stackoverflow](https://stackoverflow.com/) to solve technical problms.
