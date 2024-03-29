#' Wrap check expression in try to capture check execution errors
#'
#' @param expr check function expression to run.
#' @inheritParams check_tbl_colnames
#'
#' @return If `expr` executes correctly, the output of `expr` is returned. If
#' execution fails, and object of class `<error/check_exec_error>` is returned.
#' The execution error message is attached as attribute `msg`.
#' @export
try_check <- function(expr, file_path) {
  check <- try(expr, silent = TRUE)
  if (inherits(check, "try-error")) {
    msg <- as.character(check) %>%
      cli::ansi_strip() %>%
      clean_msg()

    return(
      capture_exec_error(
        file_path = file_path,
        msg = paste("EXEC ERROR:", msg),
        call = get_expr_call_name(expr)
      )
    )
  }
  check
}

get_expr_call_name <- function(expr) {
  call_name <- try(rlang::call_name(rlang::expr(expr)),
    silent = TRUE
  )
  if (inherits(call_name, "try-error")) {
    return(NA)
  }
  call_name
}

clean_msg <- function(msg) {
  stringr::str_replace_all(
    msg, c("\\{" = "[", "\\}" = "]")
  )
}
