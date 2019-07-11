#https://www.analyticsvidhya.com/blog/2017/03/beginners-guide-on-web-scraping-in-r-using-rvest-with-hands-on-knowledge/
library(rvest)
library(tidyverse)

url <- "https://transcripts.fandom.com/wiki/Avengers:_Endgame"

# tidyverse way:
endgame <- url %>%
            read_html %>%
            html_nodes("p") %>%
            html_text %>%
            data.frame

write.table(endgame,
            file = "~/Desktop/endgame.txt",
            row.names=F,
            quote=F)


# non-tidyverse way
webpage <- read_html(url)
endgame_nodes <- html_nodes(webpage, "p")
endgame_text <- html_text(endgame_nodes)
endgame <- data.frame(endgame_text)


write.table(endgame,
            file = "~/Desktop/endgame.txt",
            row.names=F,
            quote=F)

#####
# Infinity war

url <- "https://transcripts.fandom.com/wiki/Avengers:_Infinity_War"

infinitywar <- url %>%
  read_html %>%
  html_nodes("p") %>%
  html_text %>%
  data.frame
  
write.table(infinitywar,
            file = "~/Desktop/infinitywar.txt",
            row.names=F,
            quote=F)
