% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geno.R
\name{validate.genotypes}
\alias{validate.genotypes}
\alias{validate}
\title{Check the integrity of a \code{genotypes} object}
\usage{
\method{validate}{genotypes}(gty, ...)
}
\arguments{
\item{gty}{a \code{genotypes} object}

\item{...}{ignored}
}
\value{
Logical scalar indicating whether object passes or fails integrity checks.
}
\description{
Check the integrity of a \code{genotypes} object
}
\details{
A valid genotypes object must have the following: a genotypes matrix with row and column names;
	a valid marker map (chr,marker,cM,pos) whose rownames match the rownames of the genotypes matrix;
	filter flags for sites and samples, with appropriate dimensions; and an indicator for allele coding.
	
	If sample metadata is present, it must be a dataframe with at least a column 'iid' which is identical
	to its rownames.  A column 'sex' is strongly encouraged but its absence will not cause validation to fail.
	
	If intensity data is present, the x- and y-intensity matrices will be checked for dimensions and names
	in manner analogous to the checks on the genotypes matrix.  If LRR and BAF have been computed, they
	will be checked also.
}
