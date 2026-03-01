"Introduction to data.table"

library(data.table)
library(dslabs)

rm(murders)
data(murders)
class(murders)

setDT(murders) #we need change from data frame

#beafore: select(murders, state, region)

class(murders)
murders[, .(state, region)] |> head() #show first six observations in only columns state and region

murders[, rate := total/population * 100000] #make new column
murders[, rate := total/population * 100000] |> head() #and show it in this version

#we can add more than one column 

murders[, ":="( rate = total/population * 100000, rank = rank(population))] |> head()

murders_copy <- copy(murders)

"Subsetting with data.table"

murders[rate <= 0.71] #filter

murders[rate <= 0.71, .(state, rate)]

"Summarizing"

library(dslabs)
data(heights)
heights <- setDT(heights)
heights

s <- heights[sex == "Female", .(average = mean(height), standard_deviation = sd(height))]
s

#min/max/median

median_min_max <- function(x) {
  c(median = median(x), min = min(x), max = max(x))
}

heights[, .(median_min_max(height))]

# group by

heights[, .(average = mean(height), standard_deviation = sd(height)), by = sex]

"Sorting"

heights[order(desc(height))] |> head()
heights[order(height)] |> head()

heights[order(sex, height)]  

"Tibbles"

as_tibble(gapminder) #like a head of all informations
class(as_tibble(murders)[,1])

# i don't uderstand this function 😭😭😭😭


