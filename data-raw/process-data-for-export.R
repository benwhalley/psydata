
library(tidyverse)

setwd('~/dev/psydata/data-raw')


grass <- CO2 %>%
  as.data.frame() %>%
  set_names(names(.) %>% tolower) %>%
  rename(strain = type, temperature = treatment, co2_uptake=uptake) %>%
  as.data.frame()  # not tibble because BayesFactor package


fuel <- mtcars %>%
  rename(engine_size = disp, power=hp, weight=wt) %>%
  mutate(automatic = am == 1) %>%
  select(-drat, -qsec, -am, -vs, -carb) %>%
  mutate(engine_size = round(engine_size*16.3871, -1)) %>% #convert to cc and round
  mutate(weight = round(weight * 0.453592 * 1000, 0)) %>% # in kg
  as.data.frame()


funimagery <-
  read.csv('fit_blind_data.csv') %>%
  mutate(intervention=factor(group, levels=c(1,2), labels=c("MI", "FIT"))) %>%
  select(-group) %>%
  mutate(weight_lost_end_trt = kg2 - kg1) %>%
  filter(complete.cases(.))


kidiq <-
  read_csv('kidiq.csv') %>%
  as.data.frame()
kidiq %>% glimpse


painmusic <-
  read_csv('painmusic.csv') %>%
  as.data.frame() %>%
  rename(pain.no.music = no.music, pain.with.music=with.music)

painmusic %>% glimpse

development <- gapminder::gapminder %>%
  set_names(names(.) %>% tolower) %>%
  rename(gdp_per_capita = gdppercap, life_expectancy = lifeexp, population=pop)

development %>% glimpse


# journal.pone.0218243.s006 <-
#   haven::read_sav('journal.pone.0218243.s005.sav')

earnings <-
  read_csv('cps2.csv') %>%
  as.data.frame() %>%
  rename(id = ID, gender=sex)


earnings2 <- earnings

earnings <- earnings %>% filter(complete.cases(.))




usethis::use_data(grass,
                  fuel,
                  funimagery,
                  kidiq,
                  painmusic,
                  development,
                  earnings,
                  earnings2,
                  overwrite=T)

