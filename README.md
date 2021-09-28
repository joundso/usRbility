usRbility
================

-   [Installation](#installation)
-   [Basic functions](#basic-functions)
    -   [Get all currently implemented usability
        toolings](#get-all-currently-implemented-usability-toolings)
-   [Implemented Usability Scores and
    Toolings](#implemented-usability-scores-and-toolings)
    -   [System Usability Scale (SUS)](#system-usability-scale-sus)
    -   [Health IT Usability Evaluation Scale
        (Health-ITUES)](#health-it-usability-evaluation-scale-health-itues)
-   [More Infos](#more-infos)
-   [References](#references)

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
devtools::install_github("joundso/usRbility", ref = "master")
```

## Basic functions

### Get all currently implemented usability toolings

``` r
usRbility::get_all_systems()
```

    ## [1] "sus"          "health-itues"

## Implemented Usability Scores and Toolings

### System Usability Scale (SUS)

The System Usability Scale originally was described in 1986 and consists
of 10 questions [\[1\]](#ref-brooke1996).

Its questions are:

<!-- ```{r list_sus_questions, results='asis'} -->
<!-- for (q in usRbility::get_sus_questions(language = "en", questions_only = TRUE)) { -->
<!--   cat(paste0("1. ", q, "\n")) -->
<!-- } -->
<!-- ``` -->

``` r
usRbility::get_sus_questions(language = "en", questions_only = TRUE)
```

    ##  [1] "I think that I would like to use this system frequently."                                  
    ##  [2] "I found the system unnecessarily complex."                                                 
    ##  [3] "I thought the system was easy to use."                                                     
    ##  [4] "I think that I would need the support of a technical person to be able to use this system."
    ##  [5] "I found the various functions in this system were well integrated."                        
    ##  [6] "I thought there was too much inconsistency in this system."                                
    ##  [7] "I would imagine that most people would learn to use this system very quickly."             
    ##  [8] "I found the system very cumbersome to use."                                                
    ##  [9] "I felt very confident using the system."                                                   
    ## [10] "I needed to learn a lot of things before I could get going with this system."

### Health IT Usability Evaluation Scale (Health-ITUES)

The Health-ITUES was described in 2010 and consists of 20 questions
[\[2\]](#ref-yen2010a).

Its questions are:

``` r
usRbility::get_health_itues_questions(language = "en", questions_only = TRUE)
```

    ##  [1] "Learning to operate [Bidshift] is easy for me."                                                                       
    ##  [2] "I am comfortable with my ability to use [Bidshift]."                                                                  
    ##  [3] "It is easy for me to become skillful at using [Bidshift]."                                                            
    ##  [4] "I can always remember how to log on to and use [Bidshift]."                                                           
    ##  [5] "[Bidshift] gives error messages that clearly tell me how to fix problems."                                            
    ##  [6] "Whenever I make a mistake using [Bidshift], I recover easily and quickly."                                            
    ##  [7] "I am able to [find shifts that I am qualified to work] whenever I use [Bidshift]."                                    
    ##  [8] "The information (such as on-line help, on-screen messages and other documentation) provided with [Bidshift] is clear."
    ##  [9] "I [am awarded shifts] in a timely manner because of [Bidshift]."                                                      
    ## [10] "I find [Bidshift] easy to use."                                                                                       
    ## [11] "I think [Bidshift] presents a more equitable process for [requesting open shifts]."                                   
    ## [12] "Using [Bidshift] enables me to [request shifts] more quickly."                                                        
    ## [13] "Using [Bidshift] increases [requesting open shifts]."                                                                 
    ## [14] "Using [Bidshift] makes it more likely that I [will be awarded a shift that I request]."                               
    ## [15] "Using [Bidshift] makes it easier to [request the shift I want]."                                                      
    ## [16] "Using [Bidshift] is useful for [requesting open shifts]."                                                             
    ## [17] "I am satisfied with [Bidshift] for [requesting open shifts]."                                                         
    ## [18] "I think BidShift has been [a positive addition to our organization]."                                                 
    ## [19] "I think [BidShift] has been [a positive addition to Nursing]."                                                        
    ## [20] "[BidShift technology] is an important part of [our staffing process]."

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
