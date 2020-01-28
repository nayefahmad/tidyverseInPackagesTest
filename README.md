
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

* To properly document the use of fns from other packages (e.g. %>% ), prob best to **both** use `usethis::use_package` **and** use `@importFrom magrittr %>% ` in the roxygen documentation of the specific function. 
