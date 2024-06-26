

cropland_africa <- function(path, ...) {

	.check_path(path)
	filename <- paste0("geosurvey_cropland.tif")
	filepath <- file.path(path, filename)

	if (!(file.exists(filepath))) {
		url <- paste0(.data_url(), "landuse/", filename)
		.downloadDirect(url, filepath, ...)
		
		r <- try(rast(filepath))
		if (inherits(r, "try-error")) {
			try(file.remove(filepath), silent=TRUE)
			stop("download failed")
		}
	} else {
		r <- rast(filepath)
	}
	r	
}



cropland_world <- function(path, ...) {
	.check_path(path)
	filename <- paste0("WorldCover_cropland_30s.tif")
	filepath <- file.path(path, filename)

	if (!(file.exists(filepath))) {
		url <- paste0(.data_url(), "landuse/", filename)
		.downloadDirect(url, filepath, ...)
		
		r <- try(rast(filepath))
		if (inherits(r, "try-error")) {
			try(file.remove(filepath), silent=TRUE)
			stop("download failed")
		}
	} else {
		r <- rast(filepath)
	}
	r	
}


landcover <- function(var, path, ...) {
	.check_path(path)
	
	cats <- c("trees", "grassland", "shrubs", "cropland", "built", "bare", "snow", "water", "wetland", "mangroves", "moss")	
	var <- tolower(var)
	if (!(var %in% cats)) {
		stop(paste(var, "is not a valid name"))
	}
	
	filename <- paste0("WorldCover_", var, "_30s.tif")
	filepath <- file.path(path, filename)

	if (!(file.exists(filepath))) {
		url <- paste0(.data_url(), "landuse/", filename)
		.downloadDirect(url, filepath, ...)
		
		r <- try(rast(filepath))
		if (inherits(r, "try-error")) {
			try(file.remove(filepath), silent=TRUE)
			stop("download failed")
		}
	} else {
		r <- rast(filepath)
	}
	r	
}

