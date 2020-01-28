#' Summary of diamonds data
#'
#' This is a demo
#'
#' @param bins Numeric
#'
#' @return a plot
#' @export
#' @importFrom magrittr %>%
#' @importFrom rlang .data
#'
#' @examples
diamonds_summary2 <- function(bins){
    ggplot2::diamonds %>%
        ggplot2::ggplot(ggplot2::aes(.data$carat,
                                     .data$price)) +
        ggplot2::geom_hex(bins = bins)

}
