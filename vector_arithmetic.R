# vector arithmetic

murders$state[which.max(murders$population)] #show the state with max murders

murder_rate <- murders$total/murders$population*100000 #murders in 100000 people
murder_rate
murders$state[order(murder_rate, decreasing = TRUE)]
