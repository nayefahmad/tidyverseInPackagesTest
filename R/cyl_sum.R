#' Make a specific summary table (demo)
#'
#' @return A df summarizing mtcars by cyl
#' @export
#'
#' @examples
cyl_sum <- function() {
    mtcars %>%
        dplyr::group_by(cyl) %>%
        dplyr::summarise(n = dplyr::n(),
                         mpg = mean(mpg))

}
