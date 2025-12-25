library(tidyverse)
library(magrittr)

is_anagram <- function(str1, str2) {
  # Split and sort in one efficient operation
  s1 <- sort.int(utf8ToInt(str1), method = "shell")
  s2 <- sort.int(utf8ToInt(str2), method = "shell")
  # Direct comparison of integer vectors
  return(identical(s1, s2))
}

data = read_rds("./palavras/br.rds") 

dt = data %>% 
  filter(tam == 8) %>% 
  select(palavra) %>% 
  unlist()
for(palavra in dt)
{
  if(is_anagram(palavra, "tonirims")) print(palavra)
}

dt = data %>% 
  filter(tam == 8) %>% 
  select(palavra) %>% 
  unlist()
for(palavra in dt)
{
  if(is_anagram(palavra, "edudpato")) print(palavra)
}

dt = data %>% 
  filter(tam == 7) %>% 
  select(palavra) %>% 
  unlist()
for(palavra in dt)
{
  if(is_anagram(palavra, "dicaale")) print(palavra)
}

dt = data %>% 
  filter(tam == 9) %>% 
  select(palavra) %>% 
  unlist()
for(palavra in dt)
{
  if(is_anagram(palavra, "lancerech")) print(palavra)
}

dt = data %>% 
  filter(tam == 10) %>% 
  select(palavra) %>% 
  unlist()
for(palavra in dt)
{
  if(is_anagram(palavra, "tednniente")) print(palavra)
}

dt = data %>% 
  filter(tam == 7) %>% 
  select(palavra) %>% 
  unlist()
for(palavra in dt)
{
  if(is_anagram(palavra, "ridovuo")) print(palavra)
}

dt = data %>% 
  filter(tam == 11) %>% 
  select(palavra) %>% 
  unlist()
for(palavra in dt)
{
  if(is_anagram(palavra, "butrergomes")) print(palavra)
}
