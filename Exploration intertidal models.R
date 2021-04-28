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

add <- load_data_ADD("Julien-Beaqulieu", c("add__CodAbundanceData_ramlegacy", "add__KelpAbundance_gom_1978-2011",
                                           "add__Steneck2013_CrabAbundance", "add__Steneck2013_UrchinAbundance-density",
                                           "add__nutrients_ts"), "7e15903f27faf50a21534d5ac85702c2b59dcccb?recursive=1")
list2env(add, envir = .GlobalEnv)

temp <- load_data_SubTemp("Julien-Beaulieu", c("temp__buoy_predicted_temps"))
list2env(temp, envir = .GlobalEnv)

# Make 1 data frame with all the variables to put in the model

int_ab <- merg__combined_intertidal_abundance[,c("SITE", "INTERTIDAL_TRANSECT", "YEAR", "LEVEL",
                                                 "ORGANISM", "MEASURE", "ORGANISM_TYPE", "TYPE", 
                                                 "VALID_NAME", "FAMILY", "VALUE")]
df <- merge(int_ab, )