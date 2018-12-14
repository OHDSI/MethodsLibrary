packages <- read.csv("extras/packages.csv", stringsAsFactors = FALSE)
sections <- read.csv("extras/sections.csv", stringsAsFactors = FALSE)

headerFile <- "extras/packagesHeader.Rmd"
lines <- gsub("\r", "", readChar(headerFile, file.info(headerFile)$size))
lines <- c(lines, "")
section <- ""
for (i in 1:nrow(packages)) {
  if (packages$section[i] != section) {
    section <- packages$section[i]
    lines <- c(lines, paste("#", section))
    lines <- c(lines, "")
    lines <- c(lines, sections$description[sections$section == packages$section[i]])
    lines <- c(lines, "")
  }
  name <- packages$name[i]
  pd <- packageDescription(name)
  lines <- c(lines, paste("## `r icon::fa('cube')`", name, ""))
  lines <- c(lines, "")
  lines <- c(lines, pd$Description)
  lines <- c(lines, "")
  if (packages$pages[i]) {
    lines <- c(lines, sprintf("[Learn more ...](https://ohdsi.github.io/%s)", name))
  } else {
    lines <- c(lines, sprintf("[Learn more ...](https://github.com/OHDSI/%s)", name))
  }
  lines <- c(lines, "")
  
}
write(lines, "packages.Rmd")
