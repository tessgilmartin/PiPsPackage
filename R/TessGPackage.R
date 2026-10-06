# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

prettyhist <- function(x, xlab, title) {
  ggplot2::ggplot(data.frame(x = x), aes(x)) +
    ggplot2::geom_histogram( fill = "yellow",
                    color = "orange") +
    ggplot2::theme_minimal() +
    ggplot2::labs(
      title = title,
      x = xlab,
      y = "Count"
    )
}
prettyhist(mpg$hwy, "Highway MPG", "Highway MPG Histogram")


time_until_deadline <- function(deadline){
  deadline <- as.POSIXct(deadline)
time_until <- as.numeric(deadline - Sys.time(), units = "hours")
return(paste("You have", round(time_until, 2), "hours until your deadline!"))
}
time_until_deadline("2026-10-06 23:59:00")

