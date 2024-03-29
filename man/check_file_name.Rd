% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_file_name.R
\name{check_file_name}
\alias{check_file_name}
\title{Check a model output file name can be correctly parsed.}
\usage{
check_file_name(file_path)
}
\arguments{
\item{file_path}{character string. Path to the file being validated relative to
the hub's model-output directory.}
}
\value{
Depending on whether validation has succeeded, one of:
\itemize{
\item \verb{<message/check_success>} condition class object.
\item \verb{<error/check_error>} condition class object.
}

Returned object also inherits from subclass \verb{<hub_check>}.
}
\description{
Check a model output file name can be correctly parsed.
}
