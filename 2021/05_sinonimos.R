library(tidyverse)

pals <- "./2021/palavras/br.rds" %>% 
  read_rds() %>% 
  filter(tam == 7) %>% 
  select(palavra) %>% 
  unlist() %>% 
  str_split("")

idx = pals %>% 
  lapply(function(x) (x[1] == "c" & 
                        x[4] == "e" &
                        x[7] == "o")) %>% 
  unlist()

pals[idx] %>% 
  lapply(function(x) { paste(x, collapse = "") }) %>% 
  unlist() %>% 
  unique()
