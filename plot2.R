data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", dec=".")

deux <- subset(data, data$Date == "1/2/2007" |  data$Date == "2/2/2007")
#data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%s")

with(deux, plot(Global_active_power ~ Time, main="sl"))
