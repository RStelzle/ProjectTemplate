### Run this script to render all .rmd analysis files to github-flavored
### Markdown as well as HTML

library(here)
library(R.utils)
rmd_files <- list.files(here("analysis"), pattern = "\\.Rmd")

for (file in rmd_files){
  rmarkdown::render(input = file, output_dir = "replication-report/")
}

?copyDirectory()

list.files(here("analysis"))

listDirectory()

list.dirs(here("analysis"))


1. alles aus /replication-report löschen
2. alles in analysis rendern
3. alle md und html fies moveInSearchPath(
4. alle subdirectories von /analysis moven und ggf. mit inhalt
)

