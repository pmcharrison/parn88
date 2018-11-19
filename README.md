
<!-- README.md is generated from README.Rmd. Please edit that file -->

# parn88: Parncutt’s (1988) root-finding algorithm

[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/pmcharrison/parn88?branch=master&svg=true)](https://ci.appveyor.com/project/pmcharrison/parn88)
[![Travis build
status](https://travis-ci.org/pmcharrison/parn88.svg?branch=master)](https://travis-ci.org/pmcharrison/parn88)
[![Coverage
status](https://coveralls.io/repos/github/pmcharrison/parn88/badge.svg)](https://coveralls.io/r/pmcharrison/parn88?branch=master)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)

This R package, `parn88`, implements the psychoacoustic root-finding
algorithm of Parncutt (1988).

## Installation

You can install the package directly from Github.

``` r
if (!require(devtools)) install.packages("devtools")
devtools::install_github("pmcharrison/parn88")
```

## Example usage

Load the package:

``` r
library(parn88)
```

Analyse a chord:

``` r
parn88(c(0, 4, 7))
#> $root
#> [1] 0
#> 
#> $root_ambiguity
#> [1] 1.870829
#> 
#> $pc_weight
#>  [1] 18  0  3  3 10  6  2 10  3  7  1  0
```

The input is a pitch class set. There are three outputs:

  - `root` - the pitch class of the estimated chord root.
  - `root_ambiguity` - the ambiguity of the chord root. Ambiguity is
    positively associated with dissonance.
  - `pc_weight` - a 12-dimensional vector describing the weight of each
    pitch class. High weight means that a pitch class is more likely to
    become the chord root.

It is also possible to compute chord roots and root ambiguities
directly.

Chord roots:

``` r
root(c(0, 4, 7)) # C major chord
#> [1] 0
root(c(0, 3, 7)) # C minor chord
#> [1] 0
root(c(0, 4, 9)) # A minor chord
#> [1] 9
root(c(2, 5, 7, 11)) # G7 chord
#> [1] 7
```

Root ambiguities:

``` r
root_ambiguity(c(0, 4, 7)) # major triad
#> [1] 1.870829
root_ambiguity(c(0, 3, 7)) # minor triad
#> [1] 2.04939
root_ambiguity(c(0, 4, 8)) # augmented triad
#> [1] 2.201398
root_ambiguity(c(0, 3, 6)) # dimimished triad
#> [1] 2.50998
```

# References

<div id="refs" class="references">

<div id="ref-Parncutt1988">

Parncutt, Richard. 1988. “Revision of Terhardt’s psychoacoustical model
of the root(s) of a musical chord.” *Music Perception* 6 (1): 65–93.

</div>

</div>
