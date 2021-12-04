library(tidyverse)

pals <- read_rds("./2021/palavras/br.rds")
pals_validas <- function(char_vec)
{
  aux <- function(linha)
  {
    linha %>% 
      unlist() %>% 
      as.character() %>% 
      paste(collapse = "")
  }
  
  char_vec %>%
    str_split("") %>% 
    expand.grid() %>% 
    apply(1, aux) %>% 
    as_tibble() %>% 
    select(palavra = value) %>% 
    inner_join(pals) %>% 
    select(palavra) %>% 
    unlist() %>% 
    paste(collapse = " ") %>%
    unique()
}

linha_1 <- c("ach", "acc", "adm", "anc", "iop", "acl")
linha_2 <- c("thi", "una", "elr", "eia", "pxe", "aai") 
linha_3 <- c("sbb", "aet", "ull", "rmv", "iat", "mna")
linha_4 <- c("oim", "uav", "ian", "cja", "uca", "ean")
linha_5 <- c("efs", "rrl", "sea", "sia", "bni", "lea") 
linha_6 <- c("jcr", "iat", "ass", "spm", "aii", "imr")
linha_7 <- c("aao", "alo", "avi", "osi", "sda", "oaa")

matriz <- rbind(
  linha_1, linha_2, linha_3, linha_4,
  linha_5, linha_6, linha_7)

flores_linha <- apply(matriz, 1, pals_validas)
flores_coluna <- apply(matriz, 2, pals_validas)

flores_linha
flores_coluna
