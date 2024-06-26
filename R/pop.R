

population <- function(year, res="5", path, ...) {
	path <- .get_path(path, "population")
	stopifnot(as.numeric(year) %in% c(2000, 2005, 2010, 2015, 2020))
	stopifnot(as.numeric(res) %in% c(10, 5, 2.5, 0.5))
	res <- ifelse(res==0.5, "30s", paste0(res, "m"))

	filename <- paste0("gpw_v4_population_density_rev11_", year, "_", res, ".tif")
	filepath <- file.path(path, "pop", filename)

	if (!(file.exists(filepath))) {
		url <- .data_url(paste0("pop/", filename))
		if (is.null(url)) return(NULL)

		dir.create(dirname(filepath), showWarnings=FALSE)
		if (!.downloadDirect(url, filepath, ...)) return(NULL)
	} 
	r <- rast(filepath)
	names(r) <- "population_density"
	r
}


