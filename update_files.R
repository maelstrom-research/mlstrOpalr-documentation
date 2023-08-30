
library(harmonizR)
library(madshapR)
library(fabR)
library(mlstrOpalr)
library(fs)
# usethis::use_pkgdown()

devtools::document(roclets = c('rd', 'collate', 'namespace', 'vignette'))
devtools::build_readme()
devtools::build_rmd('NEWS.Rmd')
fs::dir_delete("docs")
pkgdown::build_site()

fs::dir_delete("../mlstrOpalr-documentation/docs")
fs::dir_copy(
  "docs",
  "../mlstrOpalr-documentation/docs",
  overwrite = TRUE)

# push to git

mlstrOpalr_help()
