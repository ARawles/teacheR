#!/usr/bin/env Rscript

bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
bookdown::render_book(input = "index.Rmd", output_format = bookdown::epub_book())
rmarkdown::render("presentations/2_Intro/r_training_intro_presentation.Rmd", output_format = "all")
rmarkdown::render("exercises/all_modules_exercises/all_modules_exercises.Rmd", output_format = "all")