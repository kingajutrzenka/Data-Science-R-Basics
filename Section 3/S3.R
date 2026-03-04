"Section 3 Quiz"

library(dslabs)
data(heights)

a = ifelse(heights$sex == "Female", 1, 2)
sum(a == 1)

b = ifelse(heights$height > 72, heights$height, 0)
mean(b)

inches_to_ft <- function(x) {
  x = x/12
  return(x)
}

inches_to_ft(144)

m = ifelse(heights$height < inches_to_ft(5), 1, 0)
sum(m)

# nested function - funkcja zagnieżdżona
