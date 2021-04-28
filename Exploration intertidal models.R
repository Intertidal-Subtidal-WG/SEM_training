# this script is Julien Beaulieu trying to do some baesian models with the intertidal data.
# 2021-04-28

#Load packages 
library(tidyverse) 
library(sjstats) 
library(ROCR) 
library(brms) 
library(modelr)
library(tidybayes) 

#Load data using: https://github.com/Intertidal-Subtidal-WG/Regime-Shift/tree/main/Script/Load-data-from-other-repo 

int <- load_data_MERG("Julien-Beaulieu", "merg__combined_intertidal_abundance")
list2env(int, envir = .GlobalEnv)

add <- load_data_ADD("Julien-Beaqulieu", c(""))