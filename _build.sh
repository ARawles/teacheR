#!/usr/bin/env Rscript

bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
rmarkdown::render("presentations/2_Intro/r_training_intro_presentation.Rmd", output_format = "all")
rmarkdown::render("presentations/3_Data_analysis/r_training_data_analysis_presentation.Rmd", output_format = "all")
rmarkdown::render("presentations/4_Programming/r_training_programming_presentation.Rmd", output_format = "all")
rmarkdown::render("presentations/6_Tidyverse/r_training_tidyverse.Rmd", output_format = "all")
rmarkdown::render("exercises/all_modules_exercises/all_modules_exercises.Rmd", output_format = "all")