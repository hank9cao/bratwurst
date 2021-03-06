% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generics.R, R/plot_functions_lite.R
\docType{methods}
\name{generateRiverplot}
\alias{generateRiverplot}
\alias{generateRiverplot,nmfExperiment_lite-method}
\alias{generateRiverplot,ANY,ANY-method}
\title{NMF riverplot}
\usage{
generateRiverplot(nmf_exp, ...)

\S4method{generateRiverplot}{nmfExperiment_lite}(nmf_exp,
  edges.cutoff = 0, useH = FALSE, color = TRUE, ranks = NULL)
}
\arguments{
\item{nmf_exp}{an nmfExperiment or a nmfExperiment_lite object}

\item{edges.cutoff}{cutoff until which similarities are displayed}

\item{useH}{whether to relate signatures (FALSE) or exposures (TRUE)}

\item{color}{whether to colorize the nodes based on PCA of the signatures}
}
\value{
ret riverplot object
}
\description{
Generate a riverplot object that displays the similarities between
signatures at different factorization ranks
}
\examples{
plt <- generateRiverplot(nmf_exp, edges.cutoff = 0.2)
plot(plt, plot_area = 1, yscale = 0.6, nodewidth = 0.5)
plot(generateRiverplot(nmf_exp))
plot(generateRiverplot(nmf_exp, ranks = 2:5))
}
