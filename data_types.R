class(ls) 
class() #check data types


install.packages("dslabs")
library(dslabs)
data("murders")
class(murders)
str(murders)
head(murders)

murders$population #show all valus

names(murders) #show column names

# vectors

pop <- murders$population
length(pop)
class(pop) #it's numeric vector, because data are numeric

# character vactors

a <- 1
a #1

"a" #"a"

class(murders$state)

#logical vectors (true/false)

z <- 3 == 2
z #False

#factors

class(murders$region)
levels(murders$region)
