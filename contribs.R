library(dplyr)
raw_contributors <- gh::gh("GET /repos/arawles/teacheR/contributors")
contributor_logins <- data.frame(login = lapply(raw_contributors, FUN = function(x) {x$login}) %>% unlist(), stringsAsFactors = FALSE)

profile_deets <- purrr::map(contributor_logins$login, ~gh::gh("GET /users/:username", username = .x))

tibble::tibble(
  login = purrr::map_chr(profile_deets, "login", .default = NA),
  name = purrr::map_chr(profile_deets, "name", .default = NA),
  website = purrr::map_chr(profile_deets, "blog", .default = NA) 
) %>%
  dplyr::filter(login != "ARawles") %>%
  write.csv("contribs.csv", row.names = FALSE)



