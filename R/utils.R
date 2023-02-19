#' Find which operating system is running
#'
#' @return OS is character form
#' @export
#'
#' @examples
check_os <- function(){
  if (is_windows()) {
    return('windows')
  } else {
    sysname <- Sys.info()[['sysname']]
    if (sysname == 'Linux'){
      return('linux')
    } else if (sysname == 'SunOS'){
      return('solaris')
    } else if (sysname == 'Darwin'){
      return('macOS')
    } else {
      return('non-identified')
    }
  }
}

#' Return if the OS is windows
#'
#' @return TRUE if OS is window
#' @export
#'
#' @examples
is_windows <- function(){
  .Platform$OS.type == 'windows'
}

#' Return if the OS is unix
#'
#' @return TRUE if OS is unix
#' @export
#'
#' @examples
is_unix <- function(){
  .Platform$OS.type == 'unix'
}

#' Return if the OS is MAC Os
#'
#' @return TRUE if OS is MAC
#' @export
#'
#' @examples
is_mac <- function(){
  .Platform$OS.type == 'unix' && Sys.info()[['sysname']] == 'Darwin'
}

#' Return if the OS is Solaris
#'
#' @return TRUE if OS is Solaris
#' @export
#'
#' @examples
is_solaris <- function(){
  .Platform$OS.type == 'unix' && Sys.info()[['sysname']] == 'SunOS'
}

#' Return if the OS is Linux
#'
#' @return TRUE if OS is Linux
#' @export
#'
#' @examples
is_linux <- function(){
  .Platform$OS.type == 'unix' && Sys.info()[['sysname']] == 'Linux'
}

#' Drive letters for Windows
#'
#' @return Drive letters if OS is windows
#' @export
#'
#' @examples
assigned_windows_drive_letter <- function(){
  if(is_windows()) {
    paste0(LETTERS[fs::dir_exists(paste0(LETTERS, ":" ))], ":")
  } else {
    NA_character_
  }
}
