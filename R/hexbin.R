#' Create hex plot
#'
#' Demo
#'
#' @param df A df
#' @param x Name of col
#' @param y Name of col
#' @param bins Numeric value
#' @importFrom magrittr %>%
#' @return A plot
#' @export
#'
#' @examples
hexbin <- function(df, x, y, bins = 10) {
    {{df}} %>%
        ggplot2::ggplot(ggplot2::aes({{ x }}, {{ y }})) +  # Hadley: spaces are good in the double curly
        ggplot2::geom_hex(bins = bins)
}
