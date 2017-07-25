# joshuaproject

Data from the [Joshua Project](https://joshuaproject.net/) packaged as `R` data frames.

## Usage

``` r
devtools::install_github("sboysel/joshuaproject")
library(joshuaproject)
```

The available datasets are

- `jp_peoples`
- `jp_countries`
- `jp_langpeopctry`
- `jp_languages`
- `jp_upgotd`
- `jp_field_names` (i.e. codebook)

See `?jp_*` for more information.

## Data Source

The package contains 6 tabular datasets acquired from the Joshua Project's [Datasets and API](https://joshuaproject.net/resources/datasets) page.

## Terms of Use

Use of exported data elements (i.e. the `jp_*` data frames) contained in `joshuaproject` package assumes agreement with the [terms of use](https://joshuaproject.net/help/terms) outlined by the Joshua Project.  All other software components (e.g. scripts contained in `data-raw/`) of the `joshuaproject` package may be used the [GPLv3](https://www.gnu.org/licenses/gpl-3.0.en.html) license.
