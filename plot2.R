data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", dec=".")
two <- subset(data, data$Date == "1/2/2007" |  data$Date == "2/2/2007")
two$Global_active_power<-as.numeric(as.character(two$Global_active_power)) 
two$Date2 <- as.Date(two$Date,format="%d/%m/%Y")
dateTime<-as.POSIXct(paste(two$Date2,as.character(two$Time)))
two<-data.frame(two,dateTime)
with(two, plot(dateTime,Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA))

#TODO xlab : days in french because my local is french