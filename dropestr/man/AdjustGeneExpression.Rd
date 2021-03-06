% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{AdjustGeneExpression}
\alias{AdjustGeneExpression}
\title{Adjust gene expression value for collisions.}
\usage{
AdjustGeneExpression(value, observed_sizes, adjusted_sizes)
}
\arguments{
\item{value}{gene expression value.}

\item{observed_sizes}{vector of quantized ordered obseved gene sizes.}

\item{adjusted_sizes}{vector of adjusted gene sizes for *observed_sizes*.}
}
\value{
Adjusted gene expression value.
}
\description{
Adjust gene expression value for collisions.
}
