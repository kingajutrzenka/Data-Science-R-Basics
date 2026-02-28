#Basic Plots 🌟

#Scatter plot

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

#Histograms

murders_rate <- (murders$total/murders$population)*100000
murders_rate
hist(murders_rate)
murders$state[order(murders_rate)]

#Boxplot

boxplot(rate~region, data=murders)












