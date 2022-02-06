set.seed(84735)

# knitr chunk options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  message = FALSE,
  warning = FALSE,
  error = FALSE,
  fig.align = "center",
  fig.asp = 0.618, # 1 / phi
  fig.show = "hold",
  dpi = 300,
  fig.pos = "h",
  cache.extra = knitr::rand_seed,
  tidy.opts = list(width.cutoff = 70),
  tidy = "styler"
)

# dplyr options
options(dplyr.print_min = 8, dplyr.print_max = 8)
