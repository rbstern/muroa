library(abjutils)
library(tidyverse)
library(magrittr)


pal_ram <- "./2021/palavras/br_ramalho.txt"
pal_ram %<>% 
  read_lines() %>% 
  tolower() %>% 
  rm_accent()

pal_ime <- "./2021/palavras/br_ime.txt"
pal_ime %<>% 
  read_lines() %>% 
  tolower() %>% 
  rm_accent()

palavras <- c(pal_ime, pal_ram) %>% 
  unique()

dt <- tibble(palavra = palavras) %>% 
  mutate(tam = nchar(palavra))

write_rds(dt, "./2021/palavras/br.rds")
