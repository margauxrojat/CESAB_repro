data(iris)
x = iris
?download.file
plot(iris$Sepal.Length)

install.packages("here")
library(here)

here()
dat_path <- file.path("data", "data_raw.csv")
dat <- read.csv(here::here(dat_path))

dat_path |> filter()

usethis::edit_r_environ()


### TD research compendium

options(usethis.protocol = "https")

## Ajout d'un fichier DESCRIPTION ----
rcompendium::add_description()

# erreur, unable to find GitHub username
?gert::git_config_global
Sys.getenv("GITHUB_PAT")

## Ajout d'une licence ----
rcompendium::add_license(license = "GPL-2")

## Ajout de sous-répertoires ----
rcompendium::add_compendium(
    compendium = c("data", "analyses", "R", "figures", "outputs")
)

## Ajout d'un script R ----
utils::file.edit(here::here("analyses", "download-data.R"))

# blablabla
