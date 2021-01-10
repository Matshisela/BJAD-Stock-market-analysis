###########################################################################################
# Effect of the covid
#      on the BJAD stock market
###########################################################################################

#Packages used
library(openxlsx)
library(tidyverse)
#install.packages("ggstatsplot")
library(ggplot2)
library(dplyr)
library(ggstatsplot)


# Data loading
bjad <- read.xlsx("C:/Users/Matshisela/Downloads/Seasonally Adjusted by Country.xlsx")


# Removing All other countries rows
bjad2 <- bjad[!(bjad$cty_desc=="All other countries"),]
bjad2


#Checking between 2018, 2019 and 2020
years <- c(2018, 2019, 2020)
bjad3 <- bjad2 %>%
  filter(year %in% years) 

bjad3

ggbetweenstats(data = bjad3, x = year, y= BJAN, type = "np", pairwise.display = "ns")


# plot
ggstatsplot::ggbetweenstats(
  data = iris,
  x = Species,
  y = Petal.Length,
  title = "Distribution of Petal length across Iris species"
)


