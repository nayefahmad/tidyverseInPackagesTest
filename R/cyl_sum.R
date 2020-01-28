#' Make a specific summary table (demo)
#'
#' @param x The var in mtcars that we want average of
#'
#' @return A df summarizing mtcars by cyl
#' @export
#' @importFrom magrittr %>%
#' @importFrom rlang .data
#' @examples
cyl_sum <- function(x) {
    mtcars %>%
        dplyr::group_by(.data$cyl) %>%  # see readme about `.data`
        dplyr::summarise(n = dplyr::n(),
                         avg = mean({{x}}))

}
