test_that("no error when called with ggplot2::diamonds", {

    # We expect no error here:
    expect_error(hexbin(ggplot2::diamonds, carat, price),
               NA)
})
