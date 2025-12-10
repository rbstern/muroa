library(abjutils)
library(tidyverse)
library(magrittr)

dt = read_rds("./palavras/br.rds") %>% 
  filter(tam == 8) %>% 
  select(palavra) %>% 
  unlist()
  
letras_1 = c("e", "l", "i", "f", "o", "q")
letras_2 = c("u", "g", "l", "i", "r", "f")
letras_3 = c("e", "i", "r", "d", "f", "a")
letras_4 = c("i", "o", "r", "a", "e", "s")

pal = "1a2b3c"
idx = c(1, 3, 5)
while(!(pal %in% dt))
{
  letras = sample(idx, replace = TRUE, 4)
  comb = sample(0:1, replace = TRUE, 4)
  pal = c(
    letras_1[c(letras[1]+comb[1], letras[1]+1-comb[1])],
    letras_2[c(letras[2]+comb[2], letras[2]+1-comb[2])],
    letras_3[c(letras[3]+comb[3], letras[3]+1-comb[3])],
    letras_4[c(letras[4]+comb[4], letras[4]+1-comb[4])]
  ) %>% 
    paste(collapse = "")
}


