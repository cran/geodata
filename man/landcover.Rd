\name{landcover}

\alias{landcover}

\title{Landcover data}

\description{
Landcover data at 30-seconds spatial resolution for (most of) the world. Values are the fraction of a landcover class in each cell. The values are derived from the ESA WorldCover data set at 0.3-seconds resolution. (License CC BY 4.0). See \url{https://esa-worldcover.org/en} for more information.

}

\usage{
landcover(var, path, ...) 
}

\arguments{
  \item{var}{character. One of "trees", "grassland", "shrubs", "cropland", "built", "bare", "snow", "water", "wetland", "mangroves", "moss"} 
  \item{path}{character. Path for storing the downloaded data. See \code{\link{geodata_path}}} 
  \item{...}{additional arguments passed to \code{\link{download.file}}}  
}

\value{
SpatRaster
}

\seealso{
\code{\link{landcover}}
}


\references{
Zanaga, D., Van De Kerchove, R., De Keersmaecker, W., Souverijns, N., Brockmann, C., Quast, R., Wevers, J., Grosu, A., Paccini, A., Vergnaud, S., Cartus, O., Santoro, M., Fritz, S., Georgieva, I., Lesiv, M., Carter, S., Herold, M., Li, Linlin, Tsendbazar, N.E., Ramoino, F., Arino, O., 2021. ESA WorldCover 10 m 2020 v100. doi:10.5281/zenodo.5571936. 
}

