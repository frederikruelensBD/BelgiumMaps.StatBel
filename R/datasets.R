
#' @name BE_ADMIN
#' @aliases BE_ADMIN_SECTORS BE_ADMIN_MUNTY BE_ADMIN_DISTRICT BE_ADMIN_PROVINCE BE_ADMIN_REGION BE_ADMIN_BELGIUM
#' @title Maps with administrative boundaries of Belgium extracted from Open Data at Statistics Belgium.
#' @description Maps with administrative boundaries of Belgium extracted from Open Data at Statistics Belgium. Namely:
#' 
#' \itemize{
#' \item BE_ADMIN_SECTORS: SpatialPolygonsDataFrame with polygons and data at the level of the statistical sector
#' \item BE_ADMIN_MUNTY: SpatialPolygonsDataFrame with polygons and data at the level of the municipality
#' \item BE_ADMIN_DISTRICT: SpatialPolygonsDataFrame with polygons and data at the level of the district
#' \item BE_ADMIN_PROVINCE: SpatialPolygonsDataFrame with polygons and data at the level of the province
#' \item BE_ADMIN_REGION: SpatialPolygonsDataFrame with polygons and data at the level of the region
#' \item BE_ADMIN_BELGIUM: SpatialPolygonsDataFrame with polygons and data at the level of the whole of Belgium
#' }
#' The original data from Statistics Belgium contains the areas at the level of the statistical sectors. These were aggregated by using the
#' definition set forth on 20/01/2011 as available in the cs012011 field.
#' 
#' Mark that Brussels is not considered as a province but for convenience, the province level of Brussels is set to the region information.
#' More information about the data can be found in the inst/documentation folder.
#' 
#' The data contains the following elements which were available at different levels. 
#' \itemize{
#' \item objectid: id of the area
#' \item cs012011: statistical code of the sector at 20/01/2011
#' \item cs102001: statistical code of the sector at 20/10/2001
#' \item cs031991: statistical code of the sector at 19/03/1991
#' \item cs031981: statistical code of the sector at 19/03/1981
#' \item sector.nl: name of the statistical sector (dutch)
#' \item sector.fr: name of the statistical sector (french)
#' \item gemeente: name of the commune (dutch)
#' \item commune: name of the commune (french)
#' \item arrond.nl: name of the district (dutch)
#' \item arrond.fr: name of the district (french)
#' \item prov.nl: name of the province (dutch)
#' \item prov.fr: name of the province (french)
#' \item reg.nl: name of the region (dutch)
#' \item reg.fr: name of the region (french)
#' \item gis.perime: perimeter of the statistical sector
#' \item gis.area.h: surface of the statistical sector (hectare)
#' \item cad.area.h: surface of the statistical sector adjusted to the cadastral area of the commune (hectare)
#' \item nuts0: Eurostat NUTS code level 0
#' \item nuts1: Eurostat NUTS code level 1
#' \item nuts2: Eurostat NUTS code level 2
#' \item nuts3: Eurostat NUTS code level 3
#' \item gis.area.km2: surface of the statistical sector (square km)
#' \item cad.area.km2: surface of the statistical sector adjusted to the cadastral area of the commune (square km)
#' \item CD_REFNIS_SECTOR: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item CD_SECTOR: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_SECTOR_DESCR_NL: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_SECTOR_DESCR_FR: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item CD_MUNTY_REFNIS: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_MUNTY_DESCR_NL: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_MUNTY_DESCR_FR: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item CD_DSTR_REFNIS: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_ADM_DSTR_DESCR_NL: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_ADM_DSTR_DESCR_FR: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item CD_PROV_REFNIS: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_PROV_DESCR_NL: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_PROV_DESCR_FR: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item CD_RGN_REFNIS: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_RGN_DESCR_NL: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' \item TX_RGN_DESCR_FR: Information added based on cs012011 from the dataset BE_ADMIN_HIERARCHY
#' }
#' 
#' @docType data
#' @source \url{http://statbel.fgov.be/nl/binaries/scbel01012011_gen13_tcm325-275679.zip}
#' @references \url{http://statbel.fgov.be/nl/statistieken/opendata/datasets/tools}
#' @seealso \link{BE_ADMIN_HIERARCHY}
#' @examples
#' \dontrun{
#' data(BE_ADMIN_SECTORS)
#' class(BE_ADMIN_SECTORS)
#' str(BE_ADMIN_SECTORS@data)
#' 
#' library(sp)
#' plot(subset(BE_ADMIN_SECTORS, TX_RGN_DESCR_NL %in% "Brussels Hoofdstedelijk Gewest"))
#' data(BE_ADMIN_MUNTY)
#' data(BE_ADMIN_DISTRICT) 
#' data(BE_ADMIN_PROVINCE) 
#' data(BE_ADMIN_REGION) 
#' data(BE_ADMIN_BELGIUM) 
#' plot(BE_ADMIN_MUNTY)
#' plot(BE_ADMIN_DISTRICT)
#' plot(BE_ADMIN_PROVINCE, lwd = 2, add = TRUE)
#' }
NULL


#' @name BE_ADMIN_HIERARCHY
#' @title Definitions of sectors/municipalities/districts/provinces/regions in Belgium.
#' @description Definitions of sectors/municipalities/districts/provinces/regions in Belgium.
#' @docType data
#' @source \url{http://statbel.fgov.be/nl/binaries/TF_PSNL_INC_TAX_SECTOR_tcm325-278417.zip}
#' @references \url{http://statbel.fgov.be/nl/statistieken/opendata/datasets/werk}
#' @examples
#' data(BE_ADMIN_HIERARCHY)
#' str(BE_ADMIN_HIERARCHY)
NULL



#' @name BE_ADMIN_AGGLOMERATIONS
#' @title Maps with administrative boundaries of agglomerations (200m) of Belgium extracted from Open Data at Statistics Belgium
#' @description Maps with administrative boundaries of agglomerations (200m) of Belgium extracted from Open Data at Statistics Belgium.
#' Agglomerations (200m) are groups of buildings of which none of them are more than 200m away from the closest neighbouring building.
#' @docType data
#' @source \url{http://statbel.fgov.be/nl/binaries/SH_CENSUS_2011_AGGLOMERATIONS_200M.shp_tcm325-276234.zip}
#' @references \url{http://statbel.fgov.be/nl/statistieken/opendata/datasets/tools/}
#' @examples
#' \dontrun{
#' data(BE_ADMIN_AGGLOMERATIONS)
#' library(sp)
#' plot(BE_ADMIN_AGGLOMERATIONS)
#' }
NULL


