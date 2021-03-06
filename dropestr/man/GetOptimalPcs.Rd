% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/low_quality_cells.R
\name{GetOptimalPcs}
\alias{GetOptimalPcs}
\title{Perform PCA with the optimal number of principal components.}
\usage{
GetOptimalPcs(data, explained.var.required = 0.9, max.pcs = 3)
}
\arguments{
\item{data}{data for low-quality cells filtration}

\item{explained.var.required}{minimal fraction of explained variance.}

\item{max.pcs}{maximal number of output principal components.}
}
\value{
List with the PCA results:
  \item{explained.var}{fraction of the explained variance.}
  \item{pca.data}{transformed data with the optimal number of principal components.}
}
\description{
Perform PCA with the optimal number of principal components.
}
