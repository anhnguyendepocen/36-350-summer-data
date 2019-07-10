library(rvest)
library(tidyverse)

url <- "https://en.wikisource.org/wiki/Barack_Obama%27s_First_State_of_the_Union_Address"

# tidyverse way:
obama_first <- url %>%
  read_html %>%
  html_nodes("#mw-content-text > div.mw-parser-output")  %>%
  html_text() %>% 
  strsplit(. , split= "\\n") %>%
  data.frame() %>%
  .[-c(1:24,125:148),]

write.table(obama_first,
            file = "~/Desktop/obama_first.txt",
            row.names=F,
            quote=F)

url <- "https://www.whitehouse.gov/briefings-statements/president-donald-j-trumps-state-union-address/"
trump_first <- url %>%
  read_html %>%
  html_nodes("p") %>%
  html_text %>%
  data.frame %>%
  .[-c(1:3, 154),]



write.table(trump_first,
            file = "~/Desktop/trump_first.txt",
            row.names=F,
            quote=F)

