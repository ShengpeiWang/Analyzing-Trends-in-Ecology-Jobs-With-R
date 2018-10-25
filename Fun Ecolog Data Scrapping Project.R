# I want to analyze the job market for ecologists.
# Specifically, the amount of excess of graduate positions to jobs for them
# I am using the ecolog (a popular list serve for ecologists) as the starting point

# I have never done anything like this
# First of install the package for web scrapping, so I can get the data
install.packages('rvest')

# Prep the working environment
library('rvest')    # Parsing of HTML/XML files 
library(tidyverse)  # General-purpose data wrangling
library(stringr)    # String manipulation
library(ggplot2)

library(tidytext)       # provides additional text mining functions

library(rebus)      # Verbose regular expressions
library(lubridate)  # Eases DateTime manipulation

# Learn the rvest functions------------------------------------------------
# Trying some code from online tutorials to get data from one page:
# Provide the url
url <- "https://listserv.umd.edu/cgi-bin/wa?A1=ind1804a&L=ecolog-l"
# Readin the webpage
webpage <- read_html(url)
# Tried to look at the structure of the webpage within R, and noting very useful here
str(webpage)
# The SelectorGadget tool allowed me to get only the titles of each posting. 
page_4i18 <- html_text(html_nodes(webpage,"ul:nth-child(3) a"))
# I also want the time information
html_text(html_nodes(webpage,"h2"))

# Now it's time to make a function to aplly this to all of the archive?
page_archive <- read_html("https://listserv.umd.edu/archives/ecolog-l.html")
# This just doesn't get me hyper link information
html_attr(html_nodes(page_archive,"li"), name = "href")[1]
# However, I have determined that there are 1085 archived pages on the server
length(html_text(html_nodes(page_archive,"li")))
# The first archival page is the fifth one having the "li" node
# I also figured out that I can get all the information this way:
page_info  <- page_archive %>%  html_nodes("li") %>%  .[[5]]
# If I clean up the info, I can generate a list of urls automatically
page_info %>% str_sub(15, 52)

# Now it's matter of putting everything together-----------------

# First, I want to generate all the urls I need.-----------
# I noticed that all the archival pages has the same structure:
# "https://listserv.umd.edu" + "/cgi-bin/wa?A1=ind1804a&L=ecolog-l"
# The first half is the same for all the webpages
# And the second half is contained on their main webpage

# Get all the second halfs of the urls
page_archive <- read_html("https://listserv.umd.edu/archives/ecolog-l.html")
pages_info  <- page_archive %>%  html_nodes("li")  # Scrap the info from main page
urls <- lapply(pages_info, function(x) str_sub(x,15, 52)) # get only the url part
urls <- urls[-c(1:4)] # select only the part of the url

# Get all the time point for each url:
# list_of_weeks <- page_archive %>%  html_nodes("li") %>% html_text()
# str(list_of_weeks)
# list_of_weeks <- list_of_weeks[5:l]
# save(list_of_weeks, file = "ecolog all weeks.r") # l = 1085 when I did this
setwd("C:/Users/sheng/Dropbox/Life")
load("ecolog all weeks.r")

list_of_weeks <- page_archive %>%  html_nodes("li") %>% html_text()
str(list_of_weeks)
list_of_weeks <- list_of_weeks[-c(1:4)]

# Making the list of urls
list_of_pages <- str_c('https://listserv.umd.edu', urls)
head(list_of_pages)

# Second, I need to create a custom function that gets all postings from each page
ecolog_p <- function(url){
  webpage <- read_html(url)
  Sys.sleep(0.2)
  webpage %>% html_nodes("ul:nth-child(3) a") %>%
              html_text
}

# Test that the function works:
ecolog_p("https://listserv.umd.edu/cgi-bin/wa?A1=ind1804a&L=ecolog-l")

# Now let's gather all the data:
# Cannot make the connection with even 100 of the webpages.
# so I'm breaking them down a bit
# ecolog_postings20 <- lapply(list_of_pages[1:20], ecolog_p)
# ecolog_postings40 <- lapply(list_of_pages[21:40], ecolog_p) # 20 works
# ecolog_postings70 <- lapply(list_of_pages[41:70], ecolog_p) # 30 works
# ecolog_postings110 <- lapply(list_of_pages[71:110], ecolog_p) # 40 works
# ecolog_postings160 <- lapply(list_of_pages[111:160], ecolog_p) # 50 works
# ecolog_postings220 <- lapply(list_of_pages[161:220], ecolog_p) # 60 works
# ecolog_postings250 <- lapply(list_of_pages[221:250], ecolog_p) # unsuccessful
# 4/19 I added the Sys.sleep() function into the function, and it works now.
# It does take a minute, so be aware.

ecolog_postings_1_250 <- lapply(list_of_pages[1:250], ecolog_p)
# Oh my god it worked!!
save(ecolog_postings_1_250, file = "1-250 postings 4_19")

ecolog_postings_251_500 <- lapply(list_of_pages[251:500], ecolog_p)
# 4-19-18 This one will not though. maybe there is a daily limit thing
# 4-20-18 Maybe there's a daily limite. I reran the code at work. 10:10-10:16?
# Yeah it worked
save(ecolog_postings_251_500, file = "251-500 postings 4_20")

ecolog_postings_501_750 <- lapply(list_of_pages[501:750], ecolog_p)
length(ecolog_postings_501_750)
# It worked again on my work computer, yeah!
length(list_of_pages)
ecolog_postings_751_end <- lapply(list_of_pages[751:1083], ecolog_p)
# Yeah yeah it worked 
save(ecolog_postings_501_750, ecolog_postings_751_end, file = "500-end postings 4_20")


# Combine the ones I have obtained
ecolog_postings_220 = c(ecolog_postings20, ecolog_postings40,
                        ecolog_postings70, ecolog_postings110,
                        ecolog_postings160, ecolog_postings220)
# Save the list of first 220 archive pages:
save(ecolog_postings_220, file = "first 220 ecolog postings.r")
load("C:/Users/shengpei/Dropbox/Life/first 220 ecolog postings.r")
load("C:/Users/shengpei/Dropbox/Life/ecolog all weeks.r")
ecolog_postings_220[[4]]

# Text mining
# Here is an easy way to get frequency of each keyword
sum(str_count(str_to_lower(page_4i18), "phd")) # Number of time "phd" is used
sum(str_count(str_to_lower(page_4i18), "phd|ms")) # Either phd or ms
sum(str_count(str_to_lower(page_4i18), "ms"))
sum(str_count(str_to_lower(page_4i18), "post doc"))
# Now it's a matter of figuring out the words to search for
# postdoc: postdoc post-doc "post doc"
# phd: phd
# ms: ms m.s
# undergrad: reu intern volunteer
# faculty level job: director faculty professor instructor
# other job: technician assistant manager

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
                faculty = f, otherjob = o, l = l)
  y}

position_breakdown(page_4i18)
# checking if the function works
# I manually scored all the postings of that page
# After tweeking the part for ms 
# (because ms can be contained in normal  words, inflating the count for ms positions)
# I got 3, 5.5, 9.5, 14, 4, 19
# Rather than 3, 5, 8, 14, 4, 15
# The o.5 for ms and phd was one posting of graduat position
# And it's hard to capture the other jobs. I'm not worried anyways.

positions_220 <- sapply(ecolog_postings_220, FUN = position_breakdown)
# This was actually pretty fast. I only noticed it a little
position_220 <- as.data.frame(
                  matrix(
                    unlist(positions_220, recursive = TRUE), 
                    nrow=220, byrow = T))
str(position_220)
colnames(position_220) = c("undergrad", "ms", "phd", "postdoc", 
                "faculty", "otherjob", "total_posting")
position_220$week <- list_of_weeks[1:220]

summary(position_220)
# plot the data
hist(position_220$postdoc)

# Exploring the data visualization
ggplot(data = position_220, aes(week, ms/total_posting))+
  geom_point()+
  geom_smooth()

# I want to try the Rcrawler package----------------------------
# install.packages("Rcrawler")
# library("Rcrawler")

# Rcrawler(Website = "https://listserv.umd.edu/cgi-bin/wa?A1=ind1804a&L=ecolog-l",
         MaxDepth = 1)
# It doesn't really do what I want, and it's very slow
