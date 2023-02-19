#' Locate main folders (drives) with certain file types or name patterns
#'
#' @param path folder from which start the search. By default, it explores all
#' possible folders from the highest (root in linux, My computer in windows)
#' 
#' @param extensions vector with all file extensions, no point required, to search
#' for. By default, all extensions searched.
#' 
#' @param patterns vector with all file names patterns to search.
#' By default, no pattern specified
#' 
#' @param ... extra parameters to pass to function fs::dir_ls
#' 
#' @return tibble with paths to the highest folders (drives) of the type
#' specified
#'
#' @export
#'
#' @examples
locate_drives <- function(path = NULL, extensions = NULL, patterns = NULL, ...){
  
  # set ini_folders
  if(is.null(path)) {
    ini_folders <- switch(check_os(),
      windows = assigned_windows_drive_letter(),
      linux = ,
      solaris = ,
      macOS = ,
      stop("Unknown Operating System"))
    # depending of the OS, set ini_folders  
  } else {
    # TBD: improve error message
    stopifnot(all(fs::dir_exists(path)))
    ini_folders <- as.vector(path)
  }
  
  
  # Check if extensions and/or patterns passed
  # regexp_eq <- convert_to_regexp(extensions, patterns)
 
  # dir_ls has to be called in a controlling the level of depth 
  fs::dir_ls(path = ini_folders, recurse = FALSE)
}
