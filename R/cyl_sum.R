#' Make a specific summary table (demo)
#'
#' @return A df summarizing mtcars by cyl
#' @export
#' @importFrom magrittr %>%
#' @importFrom rlang .data
#' @examples
cyl_sum <- function() {
    mtcars %>%
        dplyr::group_by(.data$cyl) %>%  # see readme about `.data`
        dplyr::summarise(n = dplyr::n(),
                         mpg = mean(.data$mpg))

}
