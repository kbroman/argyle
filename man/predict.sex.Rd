% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sex.R
\name{predict.sex}
\alias{predict.sex}
\title{Predict sample sexes based on genotype and intensity data}
\usage{
\method{predict}{sex}(object, method = c("ycalls", "xy"), clean = TRUE,
  platform = "giga", ...)
}
\arguments{
\item{object}{a \code{genotypes} object}

\item{method}{how to go about making sex predictions (see Details)}

\item{clean}{logical; for *MUGA arrays, use only known-good Y chromosome markers}

\item{platform}{character; name of a specific array platform (used only for \code{"xy"} method)}

\item{...}{other parameters passed to underlying prediction functions}
}
\value{
a dataframe with 4 columns: individual ID, nominal sex (0 if unknown), predicted sex
	(0 if ambiguous), probability (NA if not a model-based prediction)
}
\description{
Predict sample sexes based on genotype and intensity data
}
\details{
Implements several (soon) methods for predicting the sex of a sample given genotype calls
	and hybridization intensity on the sex chromosomes.  Assumes the sex-chromosome system of eutherian
	mammals (female karyotype XX, male karyotype XY).  Sex chromosomes should be named "X" ("chrX") and
	"Y" ("chrY") respectively.
	
	Method \code{"ycalls"} simply counts the number of missing and of non-missing, non-heterozygous calls
	at Y-linked markers, and applies a threshold to both.  The defaults are calibrated to the GigaMUGA
	array for mouse.  Females have mostly missing calls, males have mostly non-missing calls, and no
	sample should have many heterozygous calls.
	
	Method \code{"xy"} calculates the sum-intensity on each sex chromsome and evaluates them against
	a pre-constructed set of clusters in 2d space corresponding to each sex.  Only available for the
	GigaMUGA array for mouse, at present.
}
