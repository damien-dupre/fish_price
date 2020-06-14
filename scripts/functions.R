# functions --------------------------------------------------------------------
read_clean <- function(path){
  df <- path %>% 
    here::here() %>% 
    readr::read_csv() %>% 
    janitor::clean_names() %>% 
    janitor::remove_constant()
  df$trade_partner[df$trade_partner == "Cote d Ivoire"] <- "Côte d'Ivoire"
  df$trade_partner[df$trade_partner == "Isle of Man (U.K.)"] <- "Isle of Man"
  df$trade_partner[df$trade_partner == "Korea, South"] <- "Korea"
  return(df)
}