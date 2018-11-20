# MethodsLibrary
[Under development] A central repository for things related to the OHDSI Methods Library

This builds the [Methods Library website](https://ohdsi.github.io/MethodsLibrary).

# Requirements

Make sure you have the icon package installed:
```r
devtools::install_github("ropenscilabs/icon")
```

```r
shell("R -e 'rmarkdown::build_site()'")

shell("R -e rmarkdown::render_site()")
```