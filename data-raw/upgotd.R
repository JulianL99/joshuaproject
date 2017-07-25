# https://joshuaproject.net/resources/datasets
library(downloader)
library(tidyverse)

jp_csv <- file.path(tempdir(), "UnreachedPeoplesByCountry.csv")

if (!file.exists(jp_csv)) {
  downloader::download( # 3.8 Mb
    url = "https://joshuaproject.net/resources/datasets/2",
    destfile = jp_csv
  )
}

jp_upgotd <- readr::read_csv(
  file = jp_csv,
  skip = 2 ,
  n_max = 6956
)

unlink(jp_csv, force = TRUE)

# jp_upgotd %>% tail()
# View(jp_upgotd)

devtools::use_data(jp_upgotd, overwrite = TRUE, compress = "bzip2")
