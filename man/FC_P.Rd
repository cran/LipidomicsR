% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/volcano_master.R
\name{FC_P}
\alias{FC_P}
\title{Calculate Fold Change and p-values for differential expression analysis}
\usage{
FC_P(compare1, compare2, p.adj = FALSE, method = "fdr")
}
\arguments{
\item{compare1}{A matrix or data frame representing the first group of data.}

\item{compare2}{A matrix or data frame representing the second group of data.}

\item{p.adj}{Logical. Should p-values be adjusted for multiple testing?}

\item{method}{The method to use for p-value adjustment. Options: 'fdr', 'bonferroni', 'holm', etc.}
}
\value{
A data frame containing the log2 fold change and -log10 transformed p-values
for each row (e.g., genes, features) in the input data.
}
\description{
This function calculates the log2 fold change (FC) and p-values for differential
expression analysis between two groups of data.
}
\examples{
compare1 <- matrix(rnorm(100), ncol = 10)
compare2 <- matrix(rnorm(100), ncol = 10)
result <- FC_P(compare1, compare2, p.adj = TRUE)

}
