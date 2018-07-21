library(rmarkdown)

for (seed in 1:10) {
  rmarkdown::render("minin_farm.Rmd", params = list(the_seed = seed))
  file.copy(from = "minin_farm.pdf", to = paste0("farm_", seed, ".pdf", collapse = ""))
}