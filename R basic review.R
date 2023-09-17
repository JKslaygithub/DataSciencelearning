library(dslabs)
library(tidyverse)
installed.packages()

ls() #this is to print the variables in workspace
help('log')
args(log)
co2
pi
?class

class(murders)
str(murders)
colnames(murders)
?reorder
?factor
x = factor(c('a','b','c'),levels = c('b','c','a'))



#matrices can only contain numbers
#dataframe is good to contain any type, so does list
#vector is a column of dataframe, all of the same type

sort(murders$total)

x <- as.integer(c(31, 4, 15, 92, 65))
sort(x)
x
index = order(x)
x[index]
?order

# use order to save the index that you want to order those numbers by
ind <- order(murders$total) 
murders$abb[ind]


mind = which.max(murders$population)
murders$state[mind]

#index logicals
murder_rate <- murders$total / murders$population * 100000 
ind = murder_rate <= 0.71
murders$state[ind]
sum(ind) # TRUE is coerced into 1

#multiple logicals
west <- murders$region == "West"
safe <- murder_rate <= 1
ind <- safe & west
murders$state[ind]

#which -- returns the index when the condition is true
ind <- which(murders$state == "California")
murder_rate[ind]


#match
ind <- match(c("New York", "Florida", "Texas"), murders$state)
ind


c("Boston", "Dakota", "Washington") %in% murders$state


#simple visualization
with(murders, plot(population, total))

murders$rate <- with(murders, total / population * 100000)
boxplot(rate~region, data = murders)


#he image function displays the values in a matrix using color. Here is a quick example:
x <- matrix(1:120, 12, 10)
image(x)

x = 1:10
sqrt(x)
s_n <- sapply(n, self-defined-functions)
s_n <- map(n, compute_s_n) --return list
s_n <- map_dbl(n, compute_s_n) --return numeric
s_n <- map_df(n, compute_s_n) --return df

case_when(x < 0 ~ "Negative", 
          x > 0 ~ "Positive", 
          TRUE  ~ "Zero")
between(x, a, b)


#tidyverse: filter, mutate, select, summarize,
#multiple summarize(use self-define function) or multiple functions inside summarize.
#pull arrange(desc())
#top_n(5, rate)
#mean(na_example, na.rm = TRUE) as_tibble(murders)
###place holder -- use the # on the right hand side as the parameters on the left side hand
# 2 |> log(8, base = _)
# 2 %>% log(8, base = .)



####importing data
filename <- "murders.csv"
dir <- system.file("extdata", package = "dslabs") -- find the target directory
fullpath <- file.path(dir, filename) --create fullpath

library(readr)
read_table
read_csv
read_csv2
read_tsv
read_delim
read_lines("murders.csv", n_max = 3)
#because read_csv is a tidyverse parser,the table loaded by this is tibble.
library(readxl)
The Microsoft Excel formats permit you to have more than one spreadsheet in one file. 

#download data
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/
extdata/murders.csv"
dat <- read_csv(url)
download.file(url, "murders.csv") -- this creates the local copy.

#while tidyverse is more readable, data.table is good to process large dataset in a faster way



























