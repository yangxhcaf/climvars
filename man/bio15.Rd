% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bioclimvars.R
\name{bio15}
\alias{bio15}
\title{bio15: Calculates precipitation seasonality}
\usage{
bio15(prec, tme, method = "anuclim")
}
\arguments{
\item{prec}{a vector of precipitation values, normally for one year (see
details).}

\item{tme}{a \code{POSIXlt} object representing the date and time of each \code{prec} value.}

\item{method}{an optional character string describing the method used to
calculate precipitation seasonality. Options include "anuclim" or unspecified (see
details).}
}
\value{
a single numeric value representing precipitation seasonality.
}
\description{
\code{bio15} is used to calculate precipitation seasonality, which is
the standard deviation of weekly or monthly precipitation values as a
percentage of the mean of those values.
}
\details{
If method is "anuclim", monthly precipitation is spline interpolated to a
weekly time period and precipitation seasonality calculated using these
values, replicating the method used by http://www.worldclim.org/. Otherwise,
precipitation seasonality is calculated using yearly values.

If using \code{anuclim} method and data span more than one year, data are
aggregated by unique month irrespective of year and one value returned. If
method is left unspecified and data span more than one year, calculations
will be performed on all data and a single value returned.
}
\examples{
prec <- (10 * sin(c(0:364) * (pi / -360)) + rnorm(365) + 12)
tme <- tmecreate(2010, 24)
plot(prec~as.POSIXct(tme), type = "l", xlab = "Month", ylab = "Precipitation")
bio15(prec, tme, method="week")
bio15(prec, tme, method="month")


}
\seealso{
the \code{\link[=tmecreate]{tmecreate()}} function can be used to create a POSIXlt object.
}
