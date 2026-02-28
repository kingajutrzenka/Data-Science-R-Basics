"Basic Data Wrangling"

#dplyr package to work with tables
library(dplyr)

#new column - rate (use mutate function):
murders <- mutate(murders, rate=total/population*100000)

head(murders)

# filter function (filter table with all who <= 0.71)
filter(murders, rate<=0.71)

#select (use to make new table)
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)
#we get small new table

# %>% we can combine some functions

murders %>% select(state, region, rate) %>% filter(rate <= 0.71)

"Creating Data Frames"

# function data.frame

grades <- data.frame(names=c("John", "Juan", "Jean", "Yao"),
                     exam_1 = c(95, 80, 90, 85),
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)
grades

class(grades$names)
