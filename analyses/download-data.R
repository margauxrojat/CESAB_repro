#  Utilisez les fonctions dir.create() pour créer le sous-répertoire, here::here() pour construire vos chemins et
# utils::download.file() pour télécharger les fichiers.

filenames <- c(
  "wildfinder-ecoregions_list.csv",
  "wildfinder-ecoregions_species.csv",
  "wildfinder-mammals_list.csv"
)

urlbase <- "https://github.com/rdatatoolbox/datarepo/blob/main/data/wildfinder/"

dir.create(path = "data/wildfinder/")
pathdata <- here::here("data/wildfinder/")

for (file in filenames) {
  fileprecis <- file.path(urlbase, file)
  utils::download.file(url = fileprecis, destfile = file.path(pathdata, file))
}

## Création du fichier pour la 1ere fonction ----
usethis::use_r("dl_pantheria_data")

dl_wildfinder_data(
  filenames = filenames,
  urlbase = urlbase,
  path2data = pathdata
)
