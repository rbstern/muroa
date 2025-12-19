library(abjutils)
library(tidyverse)
library(magrittr)

is_anagram <- function(str1, str2) {
  # Split and sort in one efficient operation
  s1 <- sort.int(utf8ToInt(str1), method = "shell")
  s2 <- sort.int(utf8ToInt(str2), method = "shell")
  # Direct comparison of integer vectors
  return(identical(s1, s2))
}

dt = read_rds("./palavras/br.rds") %>% 
  filter(tam == 12) %>% 
  select(palavra) %>% 
  unlist()

for(palavra in dt)
{
  if(is_anagram(palavra, "lbiboiaigraf")) print(palavra)
}

for(palavra in dt)
{
  if(is_anagram(palavra, "iostrdeiatan")) print(palavra)
}

for(palavra in dt)
{
  if(is_anagram(palavra, "aiohdcepremr")) print(palavra)
}

for(palavra in dt)
{
  if(is_anagram(palavra, "amenbratmoro")) print(palavra)
}

for(palavra in dt)
{
  if(is_anagram(palavra, "rtorelntocui")) print(palavra)
}

for(palavra in dt)
{
  if(is_anagram(palavra, "pememarnteot")) print(palavra)
}

for(palavra in dt)
{
  if(is_anagram(palavra, "fnesiitinima")) print(palavra)
}

for(palavra in dt)
{
  if(is_anagram(palavra, "anaicsslipat")) print(palavra)
}

for(palavra in dt)
{
  if(is_anagram(palavra, "erebagilncia")) print(palavra)
}
