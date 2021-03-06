% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{bafplot}
\alias{bafplot}
\title{Plot B-allele frequency (BAF) and log2-intensity ratio (LRR) for a sample}
\usage{
bafplot(gty, sm = NULL, smooth = "cv", draw = TRUE, ...)
}
\arguments{
\item{gty}{a \code{genotypes} object with BAF and LRR pre-computed via \code{tQN()}}

\item{sm}{indexing vector which should extract exactly one sample from \code{gty}}

\item{smooth}{span for signal smoother, passed on to \code{supsmu()} to control smoothing}

\item{draw}{logical; if \code{TRUE}, actually render the plot on a new \code{grid} canvas}

\item{...}{ignored}
}
\value{
a two-panel plot, BAF in upper panel and LRR in lower panel
}
\description{
Plot B-allele frequency (BAF) and log2-intensity ratio (LRR) for a sample
}
\details{
For a detailed description of the BAF and LRR metrics, their calculation,
	and literature references, see \code{?tQN}.
}
\seealso{
\code{\link{tQN}}, \code{\link{supsmu}}
}
