library(rmarkdown)
library(xaringan)
library(learnr)
library(bookdown)

bookdown::render_book("index.Rmd")
rmarkdown::render("modules/2_Intro/r_training_intro_presentation.Rmd", output_format = "all")
rmarkdown::render("modules/3_Data_analysis/r_training_data_analysis_presentation.Rmd", output_format = "all")
rmarkdown::render("modules/4_Programming/r_training_programming_presentation.Rmd", output_format = "all")
rmarkdown::render("modules/6_Tidyverse/r_training_tidyverse.Rmd", output_format = "all")
rmarkdown::render("exercises/all_modules_exercises/all_modules_exercises.Rmd", output_format = "all")

