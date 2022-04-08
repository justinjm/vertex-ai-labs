#
# Install required packages to reproduce and use this repository 
# 
# create list of CRAN packages required ---------------------------------------
required <- c(
              "devtools",
              # "remotes",
              # "assertthat",
              # "httr",
              "here",
              "gargle",
              "googleAuthR",
              "googleCloudStorageR",
              "googleCloudRunner",
              "dpylr",
              "randomForest",
              "plumber")

# install packages from CRAN ---------------------------------------------------
## create list of packages not already installed and install missing ones 
not_installed <- required[!(required %in% installed.packages()[,"Package"])]
not_installed
if(length(not_installed)) install.packages(not_installed)

# install required packages from GitHub  --------------------------------------

## install dev version to have more functions not available in CRAN version
# devtools::install_github("tidyverse/googlesheets4")