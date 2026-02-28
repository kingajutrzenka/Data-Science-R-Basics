# each column is a vector

# function c

codes <- c(380, 124, 818)
country <- c("Italy", "Canada", "Egypt")
codes <- c(Italy=380, Canada= 124, Egypt=818)
codes

seq(1, 10) #numbers from 1 to 10
seq(1, 10, 2)
1:10

codes[2] #show second column
#the same:
codes["Canada"]

codes[1:2] #show first and second elements
#the same
codes[c("Egypt", "Italy")]
