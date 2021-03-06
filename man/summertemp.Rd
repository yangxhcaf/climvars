% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/physclimvars.R
\name{summertemp}
\alias{summertemp}
\title{summertemp: Mean summer temperature}
\usage{
summertemp(startyear, endyear, tempnc, startday = 152, endday = 243)
}
\arguments{
\item{startyear}{the earliest calendar year (AD) to be considered in the
calculation.}

\item{endyear}{the latest calendar year (AD) to be considered in the
calculation.}

\item{tempnc}{full path name of nc file containing temperature values for each year and with data extent: -1.25, 358.75, -91.25, 91.25 when converted to raster format.}

\item{startday}{Indicates assumed day of year of start of summer in northern
hemisphere in non-leap year. Default, 1st June.}

\item{endday}{Indicates assumed day of year of end of summer in northern
hemisphere in non-leap year. Default, 31st August.}
}
\value{
a matrix of mean summer temperature values over the specified years.
}
\description{
\code{summertemp} calculates mean summer temperature across specified time period (years).
}
\details{
Function has been designed to run with raster data of dimensions 73 x 144.
Seasons are flipped in southern hemisphere. I.e. 1st June (day 152) = day 152+365/2+0.5 = 334 = 1st Dec.
in leap years, 1 day added. Startday and endday should be for northern hemisphere, and are calculated for southern hemisphere within the function.
}
\seealso{
\code{\link[=mtoraster]{mtoraster()}}

\code{\link[=nctarray]{nctarray()}} to create array of temperature values from an nc file.

Requires function \code{\link[=mst]{mst()}} to be loaded.
}
