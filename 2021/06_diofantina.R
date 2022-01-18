library(combinat)
library(tidyverse)

permn(1:9) %>% 
  do.call(rbind, .) %>% 
  as_tibble() %>% 
  mutate(sol = (
    (V1 + V2 + V5 == 11) &
      (V3 + V6 == 11) &
      (V4 + V7 + V8 + V9 == 23) &
      (V1 + V2 + V4 + V5 == 12) &
      (V2 + V3 + V5 + V6 == 16) &
      (V4 + V5 + V7 + V8 == 17) &
      (V5 + V6 + V8 + V9 == 27)
  )) %>% 
  filter(sol)
