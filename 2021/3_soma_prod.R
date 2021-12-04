library(tidyverse)

expand.grid(1:9, 11:19) %>% 
  mutate(resp = (Var1*Var2 == 4*(Var1+Var2))) %>% 
  filter(resp)

6*12 == 4*(6+12)
# TRUE
