#Sorting

library(dslabs)
data(murders)

#two option
sort(murders$total) #only sort

index <- order(murders$total)
murders$total[index]

order(murders$total) #sort and show the index 

murders$state[1:10] #1-10 records

murders$state[index] # i used index vector to sort  by total and show state

max(murders$total)

index_max <- which.max(murders$total)
index_max #this show a max total index
murders$state[index_max] #show a state with the biggest total

rank(murders$total) #normal sequence, but see sort place


