setwd("~/Documents/Research/Scripts/PurrfectPlots")

devtools::create("PurrfectPlots")
setwd ("~/Documents/Research/Scripts/PurrfectPlots/PurrfectPlots/")

devtools::document()
setwd("..")
devtools::install("PurrfectPlots")
