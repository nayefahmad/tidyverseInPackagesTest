#' Make a specific bar plot (demo)
#'
#' This is just to demo using the tidyverse in package development
#'
#' @return Nothing? Print to screen?
#' @export
#'
#' @examples
cyl_plot <- function(){
    ggplot2::ggplot(mtcars) +
        ggplot2::geom_bar(ggplot2::aes(cyl)) +
        ggplot2::coord_flip()

}
