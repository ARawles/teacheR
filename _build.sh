#!/usr/bin/env Rscript

bookdown::render_book("index.Rmd", bookdown::gitbook(split_by = "section"))
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
bookdown::render_book(input = "index.Rmd", output_format = bookdown::epub_book(cover_image = "cover.png"))

