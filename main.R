library(rmarkdown)
library(xaringan)

rmarkdown::render("modules/1_Intro/r_training_intro_presentation.Rmd", output_format = "all")
rmarkdown::render("modules/2_Data_analysis/r_training_data_analysis_presentation.Rmd", output_format = "all")
rmarkdown::render("modules/3_Programming/r_training_programming_presentation.Rmd", output_format = "all")
rmarkdown::render("modules/4_Tidyverse/r_training_tidyverse.Rmd", output_format = "all")

