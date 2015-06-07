par(mfrow = c(1,1),cex=.85,cex.axis=.85,cex.lab=.85)
data <- read.csv("household_power_consumption.txt", header=TRUE, sep=";", dec=".")
two <- subset(data, data$Date == "1/2/2007" |  data$Date == "2/2/2007")
two$Date2 <- as.Date(two$Date,format="%d/%m/%Y")
dateTime<-as.POSIXct(paste(two$Date2,as.character(two$Time)))
two<-data.frame(two,dateTime)
two$Sub_metering_1<-as.numeric(as.character(two$Sub_metering_1)) 
two$Sub_metering_2<-as.numeric(as.character(two$Sub_metering_2)) 
two$Sub_metering_3<-as.numeric(as.character(two$Sub_metering_3)) 

png(file ="plot3.png")
# first a graph without data
with(two, plot(dateTime, Sub_metering_1, type="n", ylab="Energy sub metering",xlab=NA))
# then the 3 rounds of data
with(two, lines(dateTime, Sub_metering_1, col="black"))
with(two, lines(dateTime, Sub_metering_2, col="red"))
with(two, lines(dateTime, Sub_metering_3, col="blue"))

legend("topright",
       lwd = 1,  lty = c(1, 1, 1), col = c( "black", "blue", "red" ), 
       legend = c("Sub_metering_1     " ,"Sub_metering_2" ,"Sub_metering_3" ))
dev.off()