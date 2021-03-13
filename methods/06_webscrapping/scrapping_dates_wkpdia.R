#Scrapping table from Wikipedia

library(rvest)
library(dplyr)

# specify the url
url <- ("https://en.wikipedia.org/wiki/COVID-19_pandemic_by_country_and_territory")

# read table from html
date_ctry_fcase <- url %>% read_html() %>%
  html_nodes(xpath='//*[@id="mw-content-text"]/div[1]/table[3]') %>% 
  html_table()

# from list to df
date_ctry_fcase <- date_ctry_fcase[[1]]

head(date_ctry_fcase)

date_ctry_fcase <- date_ctry_fcase %>% separate("Country or territory", 
                                    c("Country1", "Country2", "Country3", "Country4", "Country5",
                                      "Country6", "Country7", "Country8", "Country9", "Country10",
                                      "Country11", "Country12", "Country13", "Country14", "Country15",
                                      "Country16", "Country17", "Country18", "Country19", "Country20"),
                                    sep = "•")

head(date_ctry_fcase)

date_ctry_fcase$rank <- seq(from = 1, to = nrow(date_ctry_fcase), by = 1)

date_ctry_fcase_long <- date_ctry_fcase %>% pivot_longer(cols = starts_with("Country"),
                                                         names_prefix = "Country",
                                                         values_to = "ctry_nm",
                                                         values_drop_na = TRUE) 
date_ctry_fcase_long$name <- NULL

date_ctry_fcase_long$ctry_nm <- trimws(date_ctry_fcase_long$ctry_nm, which = c("both"))

write_csv(date_ctry_fcase_long, "./data/date_ctry_fcase.csv")