# https://joshuaproject.net/resources/datasets
library(downloader)
library(tidyverse)

jp_csv <- file.path(tempdir(), "AllCountries.csv")

if (!file.exists(jp_csv)) {
  downloader::download( # 3.8 Mb
    url = "https://joshuaproject.net/resources/datasets/3",
    destfile = jp_csv
  )
}

jp_countries <- readr::read_csv(
  file = jp_csv,
  skip = 2 ,
  n_max = 238
)

unlink(jp_csv, force = TRUE)

# jp_countries %>% tail()
# View(jp_countries)

devtools::use_data(jp_countries, overwrite = TRUE, compress = "bzip2")
