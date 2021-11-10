
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




bae2018 <-
  read_csv('bae-2018.csv') %>%
  set_names(names(.) %>% tolower()) %>%
  rename(perpetrator_gender=perpetrator, number_of_perpetrators = numberofperpetrator, perpetrator_relation = perprel, type_of_abuse=typeofabuse, participant = participants) %>%
  mutate(across(c(parents, perpetrator_gender, perpetrator_relation, type_of_abuse), factor)) %>%
  mutate(number_of_perpetrators = ordered(number_of_perpetrators, levels=c("single", "multiple"))) %>%
  as.data.frame()

bae2018 %>% glimpse
#bae2018$number_of_perpetrators %>% unique

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


# https://worldhappiness.report/ed/2021/#appendices-and-data
hap <- readxl::read_excel('DataPanelWHR2021C2.xls')
happy <- hap %>%
  set_names(names(.) %>% tolower() %>% str_replace_all(" ", "_")) %>%
  rename(country=country_name, happiness=life_ladder) %>%
  mutate(gdp_per_capita = exp(log_gdp_per_capita)) %>%
  select(-log_gdp_per_capita) %>%
  as.data.frame()

happy %>% glimpse




studyhabits <-
  read_csv('studyhabitsandgrades.csv') %>%
  as.data.frame() %>%
  mutate(unique_id = factor(unique_id))

studyhabits %>% glimpse


bmi <- read_csv('hse_bmi_2005-2008.csv') %>%
  select(id, bmi, age, sex, eq5d=eqmean, mobility, selfcare, usualact, pain, anxiety, cohort) %>%
  mutate(bmi = ifelse(bmi<0, NA, bmi), id=row_number()) %>%
  mutate(eq5d = ifelse(eq5d < 0, NA, eq5d)) %>%
  mutate(sex = factor(sex, levels=1:2, labels=c("Male", "Female")))
bmi %>% View

usethis::use_data(grass,
                  fuel,
                  funimagery,
                  kidiq,
                  painmusic,
                  development,
                  earnings,
                  earnings2,
                  happy,
                  studyhabits,
                  bae2018,
                  bmi,
                  overwrite=T)




