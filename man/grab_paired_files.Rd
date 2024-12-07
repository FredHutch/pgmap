% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file_handlers.R
\name{grab_paired_files}
\alias{grab_paired_files}
\title{Obtain the counts for a group of samples}
\usage{
grab_paired_files(dir, sample_names, time = TRUE)
}
\arguments{
\item{dir}{a file path to a directory where the bam files associated with the sample names will be stored.}

\item{sample_names}{a character vector that indicates the name of the samples as they are listed in the file names.}

\item{time}{TRUE/FALSE you want the duration this takes to run printed out}
}
\description{
This function takes a forward and reverse bam files for a group of samples and returns the counts and stats.
}
\examples{
\dontrun{

# This will be the directory that contains all the file path
dir <- file.path(example_data_folder(), "bam")

# These MUST be names that are listed in the bam file name itself.
# There needs to be exactly 2 bam files per sample
sample_names <- c("sample1", "sample2", "sample3")

sample_df <- grab_paired_files(dir, sample_names)
}
}
