# # https://joshuaproject.net/resources/datasets
library(downloader)
library(tidyverse)

jp_csv <- file.path(tempdir(), "AllPeoplesByCountry.csv")

if (!file.exists(jp_csv)) {
  downloader::download( # 3.8 Mb
    url = "https://joshuaproject.net/resources/datasets/1",
    destfile = jp_csv
  )
}

jp_peoples <- readr::read_csv(
  file = jp_csv,
  skip = 2,
  n_max = 16818
)

unlink(jp_csv, force = TRUE)

# View(jp_peoples)

devtools::use_data(jp_peoples, overwrite = TRUE, compress = "bzip2")
