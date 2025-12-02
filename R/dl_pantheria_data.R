dl_wildfinder_data <- function(filenames, urlbase, path2data) {
  if (length(filenames) == 1) {
    file <- filenames[1]
    fileprecis <- file.path(urlbase, file)
    utils::download.file(url = fileprecis, destfile = file.path(pathdata, file))
  } else {
    for (file in filenames) {
      fileprecis <- file.path(urlbase, file)
      utils::download.file(
        url = fileprecis,
        destfile = file.path(pathdata, file)
      )
    }
  }
}
