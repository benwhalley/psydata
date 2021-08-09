
library(tidyverse)

setwd('~/dev/psydata/data-raw')


grass <- CO2 %>%
  as.data.frame() %>%
  set_names(names(.) %>% tolower) %>%
  rename(strain = type, temperature = treatment, co2_uptake=uptake) %>%
  as.data.frame()  # not tibble because BayesFactor package


fuel <- mtcars %>%
  rename(engine_size = disp, power=hp) %>%
  mutate(automatic = am == 1) %>%
  select(-drat, -qsec, -am) %>%
  as.data.frame()


fit <-
  read.csv('fit_blind_data.csv') %>%
  mutate(group=factor(group, levels=c(1,2), labels=c("MI", "FIT"))) %>%
  filter(complete.cases(.))


usethis::use_data(grass, fuel, FIT, overwrite=T)

