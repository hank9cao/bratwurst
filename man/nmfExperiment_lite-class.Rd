% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nmfExperiment-class_lite.R
\docType{class}
\name{nmfExperiment_lite-class}
\alias{nmfExperiment_lite-class}
\alias{nmfExperiment_lite}
\title{NMF Experiment Class lite}
\value{
An object of NMF Experiment Class lite
}
\description{
NMF Experiment Class lite
}
\section{Slots}{

\describe{
\item{\code{HMatrix}}{list.}

\item{\code{WMatrix}}{list.}

\item{\code{FrobError}}{DataFrame.}

\item{\code{OptKStats}}{DataFrame.}
}}

\examples{
nmfExperiment_lite(input_matrix = input_matrix,
                   WMatrix      = lapply(complete_eval, "[[" , "W"),
                   HMatrix      = lapply(complete_eval, "[[" , "H"),
                   FrobError    = frob_errors,
                   OptKStats    = OptKStats,
                   OptK         = OptK,
                   SignFeatures = SignFeatures)
}
