data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", dec=".")

#data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%s")
#plot(