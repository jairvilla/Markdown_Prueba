# Install and load tidyverse ----------------------------------------------
install.packages("tidyverse")
library(tidyverse)


# gather() ----------------------------------------------------------------

### Create a sample dataset 
cases <- tribble(
  ~Country, ~"2011", ~"2012", ~"2013",
  "FR",    7000,    6900,    7000,
  "DE",    5800,    6000,    6200,
  "US",   15000,   14000,   13000
)

View(cases)

### Gather() template
cases %>% gather(key = "year", value = "n", 2:4)
cases %>% gather("year","n", 2:4)
cases %>% gather("year","n", "2011", "2012", "2013")
cases %>% gather("year","n", starts_with("201"))

### Your turn 2
table4a

table4a %>% 
  gather(key = "year", value = "n", 2:3)

table4a %>% 
  gather(key = "year", value = "n", 2:3, convert = TRUE)


# Spread() ----------------------------------------------------------------

### Create a sample dataset
pollution <- tribble(
  ~city, ~size, ~amount,
  "New York", "large",  23,
  "New York", "small",  14,
  "London",   "large",  22,
  "London",   "small",  16,
  "Beijing",  "large",  121,
  "Beijing",  "small",  121
)

### Spread() template
pollution %>% spread(key = size, value = amount)
pollution %>% spread(size, amount)

### Your turn 4
table2 %>% 
  spread(key = type, value = count)


# Untidy data example -----------------------------------------------------

### WHO
View(who)

### Your turn 5
who %>%
  gather("codes", "n", 5:60) %>%
  select(country, year, codes, n)

who %>%
  gather("codes", "n", 5:60) %>%
  select(-iso2, -iso3)


# Separate() --------------------------------------------------------------

who %>%
  gather("codes", "n", 5:60) %>%
  select(-iso2, -iso3) %>%
  separate(codes, into = c("new", "type", "sexage"), sep = "_") %>%
  select(-new)

who %>%
  gather("codes", "n", 5:60) %>%
  select(-iso2, -iso3) %>%
  separate(codes, c("new", "type", "sexage"), sep = c(4, 7))

### Your turn 6
who %>%
  gather("codes", "n", 5:60) %>%
  select(-iso2, -iso3) %>%
  separate(codes, c("new", "type", "sexage"), sep = "_") %>%
  select(-new) %>%
  separate(sexage, into = c("sex", "age"), sep = 1)


# Unite() -----------------------------------------------------------------

template <- who %>%
  gather("codes", "n", 5:60) %>%
  select(-iso2, -iso3) %>%
  separate(codes, c("new", "type", "sexage"), sep = "_") %>%
  select(-new) %>%
  separate(sexage, into = c("sex", "age"), sep = 1)

unite(template, sexage, 4:5, sep = "")
