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

is_windows <- function(){
  .Platform$OS.type == 'windows'
}

is_unix <- function(){
  .Platform$OS.type == 'unix'
}

is_mac <- function(){
  .Platform$OS.type == 'unix' && Sys.info()[['sysname']] == 'Darwin'
}

is_solaris <- function(){
  .Platform$OS.type == 'unix' && Sys.info()[['sysname']] == 'SunOS'
}

is_linux <- function(){
  .Platform$OS.type == 'unix' && Sys.info()[['sysname']] == 'Linux'
}

assigned_windows_drive_letter <- function(){
  if(is_windows()) {
    paste0(LETTERS[fs::dir_exists(paste0(LETTERS, ":" ))], ":")
  } else {
    NA_character_
  }
}
