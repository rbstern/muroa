library(tidyverse)

dt <- read_rds("./2021/palavras/br.rds")

dt %>% 
  filter(tam == 3, 
         str_detect(palavra, "[e]"),
         str_detect(palavra, "[u]"))
