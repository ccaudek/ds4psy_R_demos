suppressPackageStartupMessages({
  library("tidyverse")
  library("bayesplot")
  library("rio")
  library("here")
})

theme_set(bayesplot::theme_default(base_size = 12))
bayesplot::color_scheme_set("gray")

set.seed(84735)

# knitr chunk options
knitr::opts_chunk$set(
  collapse = TRUE,
  message = FALSE,
  warning = FALSE,
  error = FALSE,
  tidy = TRUE,
  fig.width = 6,
  fig.asp = 0.618 # 1 / phi
)

