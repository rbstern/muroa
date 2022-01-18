library(tidyverse)

pals <- read_rds("./2021/palavras/br.rds")

# REBUS 1
## MISSIVAS
pals %>% 
  filter(tam == 8) %>% 
  filter(grepl("missi[a-z]{3}", palavra))
## VASILHA
pals %>% 
  filter(tam == 7) %>% 
  filter(grepl("vas[a-z]{4}", palavra))

## MISSIVAS ILHADAS

# REBUS 2
pals %>% 
  filter(tam == 8) %>% 
  filter(grepl("[a-z]{2}legati", palavra))

pals %>% 
  filter(tam == 8) %>% 
  filter(grepl("bre[a-z]{3}sa", palavra))
