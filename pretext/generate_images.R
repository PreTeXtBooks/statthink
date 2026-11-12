# Generate figures referenced by the PreTeXt source that are not checked in.
# Output goes to pretext/assets/_figures (the PreTeXt "external" directory).
# Run from the repository root:  Rscript pretext/generate_images.R
out <- file.path("pretext", "assets", "_figures")
dir.create(out, recursive = TRUE, showWarnings = FALSE)

png_plot <- function(name, expr, w = 480, h = 480) {
  png(file.path(out, name), width = w, height = h)
  on.exit(dev.off())
  force(expr)
}

# Chapter 5 (random variables): Uniform(3,7) density and CDF
x <- seq(0, 10, length = 1000)
png_plot("plot-x-den.png", plot(x, dunif(x, 3, 7)))
png_plot("plot-x-den-1.png", plot(x, dunif(x, 3, 7), type = "l"))
png_plot("plot-x-cdf.png", plot(x, punif(x, 3, 7), type = "l"))

# Chapter 12 (testing): difference between highway and city mpg
cars <- read.csv(file.path("_data", "cars.csv"))
dif.mpg <- cars$highway.mpg - cars$city.mpg
png_plot("hypothesis1.png", plot(table(dif.mpg)))
