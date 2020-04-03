# Generate site from markdown files --------------------------------------

# You'll need the icon package:
devtools::install_github("ropenscilabs/icon")

# Run this in standalone R session. Runs orders of magnitude faster compared 
# to running in RStudio:

setwd("C:/Git/MethodsLibrary")
rmarkdown::render_site()


# Generate packages markdown file

source("extras/GeneratePackagesPage.R")
