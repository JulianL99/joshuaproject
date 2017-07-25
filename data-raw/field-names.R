# # https://joshuaproject.net/resources/datasets
library(downloader)
library(tidyverse)

jp_csv <- file.path(tempdir(), "FieldNames.csv")

if (!file.exists(jp_csv)) {
  downloader::download( # 3.8 Mb
    url = "https://joshuaproject.net/resources/datasets/6",
    destfile = jp_csv
  )
}

jp_field_names <- readr::read_csv(
  file = jp_csv,
  skip = 2 ,
  n_max = 231
)

unlink(jp_csv, force = TRUE)

# jp_field_names %>% tail()
# View(jp_field_names)

devtools::use_data(jp_field_names, overwrite = TRUE, compress = "bzip2")
