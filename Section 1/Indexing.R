"Indexing"

murder_rate

index <- murder_rate <= 0.71 #show all data and show TRUE/FALSE in "numer place"
index

murders$state[index] #show states where index = TRUE

sum(index) #how many countries have index = True
murders$region[index]

west <- murders$region == "West"
safe <- murder_rate <= 1

murders$state[safe]

index <- safe & west
murders$state[index] # states who are safe and west

"Indexing functions"

#which

which(index)

murder_rate[index]
murders$state[index]

m_state <- murders$state
m_state[index]

#match

index <- match(c("New York", "Florida", "Texas"), murders$state ) #index who match NY, Florida...
index

#%in%

x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")

y %in% x
x %in% y

c("Boston", "Dakota", "Washington") %in% murders$state
