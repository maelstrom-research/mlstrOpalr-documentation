library(mlstrOpalr)
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



# replace ligne 137
file.edit("docs/index.html")
<li><a href="authors.html#authors">Citing mlstrOpalr</a></li>
  
  
# replace ligne 57
file.edit("docs/authors.html")
     <h1 id="authors">Authors</h1>
  
# insert after ligne 70
file.edit("docs/authors.html")
<div class="section level2 aknowledgment-section">
  <div>
  <h1 id="aknowledgment">Acknowledgment</h1>
  
  
  We extend our heartfelt appreciation to all the members of the
Maelstrom Research team and our valued partners who have played a role in
making this project possible. 

<br><br>
  Special thanks go to

<strong>Zishu Chen</strong>,
<strong>Samuel El-Bouzaidi Tiali</strong>,
<strong>Ramin Haeri Azad</strong>, 
<strong>Anouar Nechba</strong>,
<strong>Alexandre Trottier</strong>,
<strong>Tina Wey</strong>,
<strong>Rita Wissa</strong>,and
all of your github beta-testers for their contributions to the documentation 
of the package, input in aligning the package with scientific guidelines and 
Maelstrom standards and for their dedicated efforts in testing the package and 
providing insightful enhancements.

<br><br>
  
  Thank you for your outstanding contributions.
<br><br>
  
  </div>
  </div>
  <div class="section level2 citation-section">



# push to git

mlstrOpalr_help()
