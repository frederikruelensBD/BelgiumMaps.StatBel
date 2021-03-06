% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pkg.R
\docType{package}
\name{BelgiumMaps.StatBel-package}
\alias{BelgiumMaps.StatBel}
\alias{BelgiumMaps.StatBel-package}
\title{Maps with administrative boundaries (national, regions, provinces, districts, municipalities, statistical sectors, agglomerations (200m)) of Belgium extracted from Open Data at Statistics Belgium}
\description{
'BelgiumMaps.StatBel' contains maps with administrative boundaries (national, regions, provinces, districts, municipalities, statistical sectors, agglomerations (200m)) of Belgium extracted from Open Data at Statistics Belgium. Data is converted from Lambert CRS into the WGS84 coordinate reference system.
}
\examples{
## Administrative areas
data(BE_ADMIN_SECTORS)
str(BE_ADMIN_SECTORS@data)

library(sp)
plot(BE_ADMIN_SECTORS, main = "Belgium sectors")

plot(head(BE_ADMIN_SECTORS), main = "Belgium sectors")
}

