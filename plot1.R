#cat household_power_consumption.txt | head -1 > 2days.csv
#cat household_power_consumption.txt | grep "^1/2/2007" >> 2days.csv 
#cat household_power_consumption.txt | grep "^2/2/2007" >> 2days.csv 
donnees <- read.csv(file="/home/julien/coursera/ExploratoryDataAnalysis/2days.csv", header=TRUE, sep=";")

#full <- read.csv(file="/home/julien/coursera/ExploratoryDataAnalysis/household_power_consumption.txt", header=TRUE, sep=";")
#full$Date <- as.Date(full$Date, format = "%d/%m/%Y") 
#donnees <- subset(full, Date == as.Date("2007-02-01") || Date == as.Date("2007-02-02"))

#TODO filtrage

hist(donnees$Global_active_power, col="red",main="Global Active Power", xlab="Global active power (kilowatts)")