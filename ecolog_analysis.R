# Analyse trend in ecology jobs using ecolog postings

# load data
# I saved the data I downloaded from April

load("Data/data_ecolog_post_tilApr2018.R")

library('rvest')    # Parsing of HTML/XML files 
library(tidyverse)  # General-purpose data wrangling
library(stringr)    # String manipulation
library(zoo)        # for the yearmon class
library(lme4)

ecolog_p <- function(url){
  webpage <- read_html(url)
  Sys.sleep(0.2)
  webpage %>% html_nodes("tr:nth-child(3) a") %>%
    html_text
}

position_breakdown <- function(x){
  x = str_to_lower(x)
  u = sum(str_count(x, "reu|intern|volunteer"))
  m = sum(str_count(x, "ms |m.s |msc |m.sc "))  
  phd = sum(str_count(x, "phd"))
  po = sum(str_count(x, "postdoc|post-doc|post doc"))  
  f = sum(str_count(x, "director|faculty|professor|instructor"))
  o = sum(str_count(x, "technician|assistant|manager"))
  l = length(x)
  y = data.frame(undergrad = u, ms = m, phd = phd, postdoc = po, 
                 faculty = f, otherjob = o, total = l)
  }

# library(tidytext)       # provides additional text mining functions

# library(rebus)      # Verbose regular expressions
# library(lubridate)

# Get the list of weeks
page_archive <- 
  read_html("https://listserv.umd.edu/archives/ecolog-l.html")
list_of_weeks <- page_archive %>%  html_nodes("li") %>% html_text()
list_of_weeks <- list_of_weeks[-c(1:4)]

# scrap the additional data since the saved data file
n_weeks_scrap <- length(list_of_weeks)-length(data_ecolog_posts)
pages_info  <- page_archive %>%  html_nodes("li") 
urls <- lapply(pages_info, function(x) str_sub(x,15, 52))
urls_recent <- urls[-c(1:4)] [1:n_weeks_scrap]
list_of_pages_recent <- str_c('https://listserv.umd.edu', urls)
ecolog_postings_recent <- lapply(list_of_pages_recent, ecolog_p)

# make the complete, updated dataset
data_ecolog_post_updated <- c(ecolog_postings_recent, data_ecolog_posts)
save(data_ecolog_post_updated, file = "data_ecolog_post_Nov_2018.R")

# generate the data: 1. unlist positions info. 2. add week info
data_positions <- lapply(data_ecolog_post_updated, position_breakdown)

list_of_month <- 
  sapply(list_of_weeks, function(x) strsplit(x, ",")[[1]]) %>% 
  matrix(ncol=2, byrow=T)

list_of_months <- list_of_month[,1] %>% 
  as.yearmon()

data_jobs <- 
  do.call(rbind.data.frame, data_positions) %>% 
  mutate(month = list_of_months)
head(data_jobs)

data_jobs_month <-
  data_jobs %>% 
  group_by(month) %>% 
  summarise_all(sum) %>% 

data_jobs_month_long <- 
  data_jobs_month %>% 
  gather(level, number_of_posts, -month) %>% 
  mutate(level = fct_recode(as.factor(level), 
                            Faculty = "faculty",
                            Postdoc = "postdoc",
                            PhD = "phd",
                            MS = "ms",
                            Undergrad = "undergrad",
                            other_job = "otherjob"),
         level = fct_relevel(level,
                             "Faculty",
                             "Postdoc",
                             "PhD",
                             "MS",
                             "Undergrad",
                             "other_job"))
         
# Visualize the pattern over time============================
ggplot(data_jobs_month_long %>% filter(level != "total"), 
       aes(month, number_of_posts, color = level)) +
  geom_point() +
  geom_smooth(method = 'loess') +
  scale_colour_hue(c = 200) +
  theme_classic()
# There is a pretty clear trend of increase over time
# across all levels besides undergrad level
# Faculty level jobs increased less compare to PhD or posdoc level jobs
# More positions in other types of jobs, and there is rapid growth there

# How popular is ecolog?
ggplot(data_jobs_month_long %>% filter(level == "total"), 
       aes(month, number_of_posts)) +
  geom_point() +
  geom_smooth(method = 'loess') +
  theme_classic()
# More people are posting on ecolog now than 15 years ago
# Slight dip around 2004 
# I'd like to explore this more later

data_jobs_proportions <-
  data_jobs_month %>% 
  mutate(other = undergrad + phd + postdoc + faculty + otherjob,
         other = total - other,
         other = other/total,
         undergrad = undergrad/total,
         ms = ms/total,
         phd = phd/total,
         postdoc = postdoc/total,
         faculty = faculty/total,
         otherjob = otherjob/total)
  
data_jobs_proportions_long <- 
  data_jobs_proportions %>% 
  gather(level, proportion_of_posts, -month) %>% 
  mutate(level = fct_recode(as.factor(level), 
                            Faculty = "faculty",
                            Postdoc = "postdoc",
                            PhD = "phd",
                            MS = "ms",
                            Undergrad = "undergrad",
                            other_job = "otherjob"),
         level = fct_relevel(level,
                             "Faculty",
                             "Postdoc",
                             "PhD",
                             "MS",
                             "Undergrad",
                             "other_job"))

ggplot(data_jobs_proportions_long %>% filter(level != "total"), 
       aes(month, proportion_of_posts, color = level)) +
  geom_point() +
  geom_smooth(method = 'loess') +
  scale_colour_hue(c = 200) +
  theme_classic()
# This is interesting, that the proportion of job-postings has been increasing.
# Even though most of the postings are not clearly job related, 
# the number of non-job related postings is in stark decline in terms of proportions.
# So ecolog has become more popular over time,
# but it's popularity as a job board is growing even faster.

# But the previouse figure does not show how the job posting proportions have changed
ggplot(data_jobs_proportions_long %>% 
         filter(level %in% c("Faculty",
                             "Postdoc",
                             "PhD",
                             "MS",
                             "Undergrad",
                             "other_job")), 
       aes(month, proportion_of_posts, color = level)) +
  geom_point() +
  geom_smooth(method = 'loess') +
  scale_colour_hue(c = 200) +
  theme_classic()
# This is essentially the same trend as the numbers themselves. 

# Formal anlyses=============================================
# To standardize the month data:
data_jobs_fit <-
  data_jobs_month_long %>% 
  filter(level != "total") %>% 
  mutate(month_n = as.numeric(month)-2000)

# fit a linear mixed model to understand the effects of time on each level
# I specified that both the intercept and slopes can vary for each level
fit_time <- lmer(number_of_posts ~ month_n + (1 + month_n|level),
                 data = data_jobs_fit)

summary(fit_time)
# The coefficient for the fixed effect is 1.66 with t value = 5.4
# Suggesting an overall increase of number of posts over time

fit_time_null <- lmer(number_of_posts ~ (1 |level),
                      data = data_jobs_fit)
anova(fit_time_null, fit_time)

# look at the random effects
ranef(fit_time) 
# Only focusing of the slope coefficients (month_n column)
# Increase in other jobs is the fastest
# The number of faculty positions closely followed the overall trend
# Increase in postdoc positions is much faster than faculty positions
# The increase in MS positions is the slowest
# notice that the actual slope would be -0.86 + 1.66, which is still positive

# The resutls support my hypotheses 2 and 3:
# There is an increase in labor supply in terms of both PhD and postdocs
# But the over-supply of postdoc is a lot stronger
# And the job market defined by faculty job availability is stagnating,
# in terms of closely match the overall trend of postings over time


