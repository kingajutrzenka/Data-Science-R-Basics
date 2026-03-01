"The summarize function"

install.packages("tidyverse")
library(tidyverse)

#summarize

library(dslabs)
data(murders)
murders <- mutate(murders, rate = total/population* 10^5)

# show minimum, median, and maximum in rate

s <- murders %>% 
  filter(region == "West") %>%
  summarize(minimum = min(rate), 
            median = median(rate), 
            maximum = max(rate),
            mean = mean(rate))

s

s$median #show median
mean(murders$rate) #for all table

"Summarizing with more than one value"

quantile(murders$rate) #this show all quantiles

class(murders$rate)
# pull(rate) change data type to numeric

"The dot placeholder"

"Group then summarize"

#table with data group by region and show only median
murders %>%
  group_by(region) %>%
  summarize(median = median(rate))

help("summarize")

table <- murders %>%
  group_by(region) %>%
  summarize(population = sum(population),
            murders = sum(total),
            rate = (murders/population)*100000)

table

"Sorting data tables"

# arrange() - sort the column from low to high

table %>% arrange(rate)

# arrange(desc()) - sort from high to low

table %>% arrange(desc(rate))

#sort by 2 columns

murders %>% arrange(region, rate) %>% head()

#top 10

m1 <- murders %>% top_n(10, total)
m1 %>% arrange(desc(total))

murders %>% top_n(10, total) %>% arrange(desc(total))
