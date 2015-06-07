data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", dec=".")
two <- subset(data, data$Date == "1/2/2007" |  data$Date == "2/2/2007")
two$Global_active_power<-as.numeric(as.character(two$Global_active_power)) 
hist(two$Global_active_power, col="red",main="Global Active Power", xlab="Global active power (kilowatts)")