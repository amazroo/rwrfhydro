% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_poly.R
\name{GetTimeZone}
\alias{GetTimeZone}
\title{Return the time zone for any point.}
\usage{
GetTimeZone(points,
  proj4 = "+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0",
  parallel = FALSE)
}
\arguments{
\item{points}{A dataframe of the points The dataframe should contain at least two
fields: "latitude" and "longitude".}

\item{proj4}{Character: Projection to be used for points's dataframe.
(DEFAULT = "+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0")}

\item{parallel}{Logical(DEFAULT = FALSE)}
}
\value{
Dataframe with an extra column containing the time zone.
}
\description{
\code{GetTimeZone} takes a dataframe of locations containing at least
two fields of latitude and longitude, overlays the points with a timezone
shapefile (can be downloded from \url{http://efele.net/maps/tz/world/}),
and adds the timeZone as a field to the input dataframe.
}
\examples{
\dontrun{
sg <- SelectGhcnGauges(countryCode="US",networkCode="C")[1:10,]
sg <- GetTimeZone(sg)
}
}
\seealso{
Other geospatial: \code{\link{ExportGeogrid}},
  \code{\link{GetGeogridIndex}},
  \code{\link{GetGeogridSpatialInfo}},
  \code{\link{GetPoly}}, \code{\link{GetProj}},
  \code{\link{GetRfc}}, \code{\link{PolyToRaster}}
}
\concept{dataMgmt}
\concept{geospatial}
\keyword{IO}
