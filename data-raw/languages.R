# https://joshuaproject.net/resources/datasets
library(downloader)
library(tidyverse)

jp_csv <- file.path(tempdir(), "AllLanguageListing.csv")

if (!file.exists(jp_csv)) {
  downloader::download(
    url = "https://joshuaproject.net/resources/datasets/5",
    destfile = jp_csv
  )
}

jp_languages <- readr::read_csv(
  file = jp_csv,
  skip = 2,
  n_max = 7107
)

unlink(jp_csv, force = TRUE)

# View(jp_languages)

devtools::use_data(jp_languages, overwrite = TRUE, compress = "bzip2")
