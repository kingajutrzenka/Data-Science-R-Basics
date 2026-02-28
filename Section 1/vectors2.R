#Vectors coercion

d <- c(1, "Canada", 3) #now all of this data have "character" type
d

x <- 1:5
y <- as.character(x) #change data type : "1" "2" "3" "4" "5"
y
w <- as.numeric(y)
w
z <- as.numeric(d)
z #we get NA, because Canada -> NA
