% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delRep.R
\name{delRep}
\alias{delRep}
\title{delRep()}
\usage{
delRep(data, n, m)
}
\arguments{
\item{data}{A dataframe storing concentration of lipids between different samples.
The column name should be the sample name and the row name should be the lipid type.
The class of column name and row name should be "character". The class of values should be
"numeric". The row names are recommended to be in a form like "PL(14:0/20:1)" or "LPL(16:1)".}

\item{n}{The whole number of replicates in one group.}

\item{m}{The number of replicates you want to delete.}
}
\value{
A new dataframe deleting replicates which cause the largest SD.
}
\description{
A function to delete specific number of replicates, the replicates causing largest
standard deviation will be deleted.
}
\examples{
WT_1=rnorm(n=5,mean=0.3,sd=0.1)
WT_2=rnorm(n=5,mean=0.3,sd=0.1)
WT_3=rnorm(n=5,mean=0.3,sd=0.1)
WT_4=rnorm(n=5,mean=0.3,sd=0.1)
KO_1=rnorm(n=5,mean=0.3,sd=0.1)
KO_2=rnorm(n=5,mean=0.3,sd=0.1)
KO_3=rnorm(n=5,mean=0.3,sd=0.1)
KO_4=rnorm(n=5,mean=0.3,sd=0.1)
data=data.frame(WT_1,WT_2,WT_3,WT_4,KO_1,KO_2,KO_3,KO_4)
rownames(data)=c("LPC(16:0)","PC(14:0/16:1)","PC(18:1/18:1)","PE(18:0/20:1)","PS(20:1/20:1)")
n=4
m=1
delRep(data,n,m)
}
