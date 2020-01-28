
# tidyverseInPackagesTest

<!-- badges: start -->
<!-- badges: end -->

The goal of tidyverseInPackagesTest is to ...

## Installation

You can install the released version of tidyverseInPackagesTest from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("tidyverseInPackagesTest")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tidyverseInPackagesTest)
## basic example code
```

## Notes 

* Data masking: means you can refer to **data vars** ("statistical vars") as if they are **env vars** ("programming variables"). E.g. "mtcars" is an env var that is always available. "cyl" is a data var associated with mtcars. 

* Why tidyverse uses data masking: just easier, faster. 

* Disadvantage: programming with tidyverse (i.e. using tidyverse fns in your own fns) is harder.

* If you refer to a data var inside your function, you have to preface it with `.data` from the rlang package. 

* To properly document the use of fns from other packages (e.g. %>% ), prob best to **both** use `usethis::use_package()` **and** use `@importFrom magrittr %>% ` in the roxygen documentation of the specific function. 
    * Hadley: `@importFrom` changes the NAMESPACE - affects **all** functions in the package. I prefer not to put it in individual functions, but to create a separate file, using `usethis::use_package_doc()`
    * NAMESPACE is about functions; DOCUMENTATION is about packages 


### Indirection

See tidy evaluation. Two methods of fixing: 

#### 1. Using square brackets 

**not recommended:**  

`cyl_plot <- function(var){
    ggplot2::ggplot(mtcars) +
        ggplot2::geom_bar(ggplot2::aes(.data[[var]])) + 
        ggplot2::coord_flip()}`


#### 2. Using "embracing"

This is basically the latest way of doing quoting/unquoting. 




