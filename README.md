usRbility
================

<!-- badges: start -->

[![codecov](https://codecov.io/gh/joundso/usRbility/branch/master/graph/badge.svg)](https://codecov.io/gh/joundso/usRbility)
[![CRAN Status
Badge](https://www.r-pkg.org/badges/version-ago/usRbility)](https://cran.r-project.org/package=usRbility)
[![Cran
Checks](https://cranchecks.info/badges/worst/usRbility)](https://cran.r-project.org/web/checks/check_results_usRbility.html)

<!-- badges: end -->

The R package `usRbility` provides functions usefully to create
questionnaires and evaluate them using common usability scales or
toolings with the goal to measure a systems usability.

## Installation

<!---
You can install `usRbility` directly from CRAN:

```r
install.packages("usRbility")
```
-->

The development version can be installed using

``` r
install.packages("devtools")
devtools::install_github("joundso/usRbility", ref = "development")
```

## Basic functions

### Get all currently implemented usability toolings

``` r
usRbility::get_all_toolings()
```

    ## [1] "sus"          "health-itues"

## Implemented Usability Scores and Toolings

### System Usability Scale (SUS)

The System Usability Scale originally was described in 1986 and consists
of 10 questions [\[1\]](#ref-brooke1996).

### Health IT Usability Evaluation Scale (Health-ITUES)

The Health-ITUES was described in 2010 and consists of 10 questions
[\[2\]](#ref-yen2010a).

## More Infos

-   About MIRACUM: <https://www.miracum.org/>
-   About the Medical Informatics Initiative:
    <https://www.medizininformatik-initiative.de/index.php/de>

## References

<div id="refs" class="references csl-bib-body">

<div id="ref-brooke1996" class="csl-entry">

<span class="csl-left-margin">\[1\] </span><span
class="csl-right-inline">J. Brooke, “SUS - A quick and dirty usability
scale,” *Usability evaluation in industry (P. W. Jordan, B. Thomas, B.
A. Weerdmeester, & A. L. McClelland (Eds.))*, pp. 189–194, 1996.</span>

</div>

<div id="ref-yen2010a" class="csl-entry">

<span class="csl-left-margin">\[2\] </span><span
class="csl-right-inline">P.-Y. Yen, D. Wantland, and S. Bakken,
“Development of a Customizable Health IT Usability Evaluation Scale,”
*AMIA Annu Symp Proc*, vol. 2010, pp. 917–921, 2010, Accessed: Sep. 24,
2021. \[Online\]. Available:
<https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3041285/></span>

</div>

</div>
