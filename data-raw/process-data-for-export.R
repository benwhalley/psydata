
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







download.file('https://doi.org/10.1371/journal.pone.0189598.s001', 'journal.pone.0189598.s001.xlsx')
rtdata <- readxl::read_excel('journal.pone.0189598.s001.xlsx')
rtdata %>% glimpse
(wii_rt <- rtdata %>%
  transmute(gender = `Sex (M=1)`,
            rt_hand_dominant = `RTH-D`,
            rt_foot_dominant = `RTF-D`,
            rt_hand_nondominant = `RTH-ND`,
            rt_foot_nondominant = `RTF-ND`,
            age_years = `Age`, n_medicines = `Medicin (n)`)
)


wii_rt_tidy <- wii_rt %>%
  mutate(participant=row_number()) %>%
  mutate(gender=factor(gender, levels=2:1, labels=c("Female", "Male"))) %>%
  pivot_longer(starts_with('rt')) %>%
  separate(name, into=c("_", "response", "dominant")) %>%
  mutate_at(vars(response, dominant), tools::toTitleCase) %>%
  mutate_at(vars(response, dominant), factor) %>%
  rename(rt=value) %>%
  select( participant, everything(), -`_`) %>%
  mutate(dominant=str_replace(dominant, "Nondominant", "Non-dominant"))
wii_rt_tidy %>% glimpse



(vermeer <- rio::import('vermeer-2015.xlsx') %>%
    set_names(names(.) %>% tolower()) %>%
    select(-fdcond, -fdgt))
vermeer %>% glimpse
#
# vermeer %>%
#   ggplot(aes(feedback, response, color=feedback)) +
#   stat_summary() +
#   facet_grid(~condition)


# wii_rt %>%
#   ggplot(aes(age_years, rt_hand_dominant)) +
#   geom_jitter() + geom_smooth() +
#   facet_grid(~cut(n_medicines, c(0,2,4,6,8,10,12,Inf)))
#
#
# wii_rt %>%
#   ggplot(aes(factor(n_medicines), rt_hand_dominant)) +
#   geom_boxplot()


heroes <- rio::import('heroes_information.csv') %>%
  janitor::clean_names() %>%
  mutate_at(vars(gender, eye_color, race), factor) %>%
  mutate_if(is.numeric, function(x){ifelse(x==-99, NA, x)})

set.seed(1234)
heroes_meta <- heroes %>% select(name, publisher) %>% sample_frac(.9)
heroes_personal <- heroes %>% select(name, gender, eye_color, race, height, weight) %>% sample_frac(.9)

heroes_personal %>% glimpse
# show missing data on each side lead to different N
left_join(heroes_meta, heroes_personal) %>% count()
left_join(heroes_personal, heroes_meta) %>% count()
inner_join(heroes_meta, heroes_personal) %>% count()
right_join(heroes_meta, heroes_personal) %>% count()


employees <- attitude %>%
  mutate(participant = row_number(), .before=1) %>%
  as_tibble()









# ASSESSMENT DATASETS FOR PLYMOUTH MODULES

rmipx1 <- read_csv('rmipx_1.csv')






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
                  wii_rt,
                  wii_rt_tidy,
                  employees,
                  heroes_meta,
                  heroes_personal,

                  #ASSESSMENT DATA
                  rmipx1,
                  overwrite=T)




