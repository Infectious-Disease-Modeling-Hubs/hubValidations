% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/capture_exec_error.R
\name{capture_exec_error}
\alias{capture_exec_error}
\title{Capture an execution error condition}
\usage{
capture_exec_error(file_path, msg, call = NULL)
}
\arguments{
\item{file_path}{character string. Path to the file being validated. Must be
the relative path to the hub's \code{model-output} (or equivalent) directory.}

\item{msg}{Character string.}

\item{call}{Character string. Name of the parent call that failed to execute.
If \code{NULL} (default), the caller's call name is captured.}
}
\value{
A \verb{<error/check_exec_error>} condition class object. Returned object also
inherits from subclass \verb{<hub_check>}.
}
\description{
Capture an execution error condition. Useful for communicating when a check
execution has failed. Usually used in conjunction with \code{\link{try}}.
}
