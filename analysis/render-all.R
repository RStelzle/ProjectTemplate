### Run this script to render all .rmd analysis files to github-flavored
### Markdown as well as HTML

library(here)
library(fs)
library(stringr)
library(callr)


## Clearing report directory
dir_delete(here("replication-report"))
dir_create(here("replication-report"))

##Rendering all .Rmd files
rmd_files <- as.list(list.files(here("analysis"), pattern = "\\.Rmd"))

render_separately <- function(...) callr::r(
  function(...) rmarkdown::render(..., envir = globalenv()), args = list(...), show = TRUE)

lapply(rmd_files, render_separately)


## Copying the _files directories
directories <- list.files(here("analysis")) %>% 
  subset(str_detect(.,"_files")) %>% 
  paste0(., "/")


for (i in 1:length(directories)){
  print(directories[i])
  dir_copy(directories[i], new_path = here("replication-report"))
  dir_delete(path = directories[i])
}

## Copying .html and .md files
not_rmd_r_files <- list.files(here("analysis")) %>% 
  subset(!str_detect(.,".R"))
  
for (file in not_rmd_r_files){
  file.copy(from = file, to = here("replication-report"))
  file.remove(file)
}  
