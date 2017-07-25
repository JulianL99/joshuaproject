# https://joshuaproject.net/resources/datasets
library(downloader)
library(tidyverse)

jp_csv <- file.path(tempdir(), "PeopleCtryLangListing.csv")

if (!file.exists(jp_csv)) {
  downloader::download( # 1.2 Mb
    url = "https://joshuaproject.net/resources/datasets/4",
    destfile = jp_csv
  )
}

jp_langpeopctry <- readr::read_csv(
  file = jp_csv,
  skip = 2 ,
  n_max = 41605
)

unlink(jp_csv, force = TRUE)

# jp_langpeopctry %>% tail()
# View(jp_langpeopctry)

devtools::use_data(jp_langpeopctry, overwrite = TRUE, compress = "bzip2")
