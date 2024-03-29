% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locate_drives.R
\name{locate_drives}
\alias{locate_drives}
\title{Locate main folders (drives) with certain file types or name patterns}
\usage{
locate_drives(path = NULL, extensions = NULL, patterns = NULL, ...)
}
\arguments{
\item{path}{folder from which start the search. By default, it explores all
possible folders from the highest (root in linux, My computer in windows)}

\item{extensions}{vector with all file extensions, no point required, to search
for. By default, all extensions searched.}

\item{patterns}{vector with all file names patterns to search.
By default, no pattern specified}

\item{...}{extra parameters to pass to function fs::dir_ls}
}
\value{
tibble with paths to the highest folders (drives) of the type
specified
}
\description{
Locate main folders (drives) with certain file types or name patterns
}
