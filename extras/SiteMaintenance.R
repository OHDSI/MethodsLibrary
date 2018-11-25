# Generate site from markdown files --------------------------------------

# Run this in standalone R session. Runs orders of magnitude faster compared 
# to running in RStudio:

setwd("C:/Users/mschuemi/Git/MethodsLibrary")
rmarkdown::render_site()


# Generate packages markdown file

source("extras/GeneratePackagesPage.R")
