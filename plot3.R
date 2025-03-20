data <- read.table("./household_power_consumption.txt", header= TRUE, sep= ";", na.strings = "?")
days <- data[((data$Date=="1/2/2007"|data$Date=="2/2/2007")),]
days$DateTime <- strptime(paste(days$Date, days$Time), format= "%d/%m/ %Y %H:%M:%S")

png(filename = "plot3.png",width= 480, height= 480)

with(days, plot(DateTime, Sub_metering_1, type= "l", xlab="", ylab= "Energy sub metering", xaxt= "n"))
with(days, lines(DateTime, Sub_metering_2, col= "red"))
with(days, lines(DateTime, Sub_metering_3, col= "blue"))
legend("topright", lty= c(1,1,1), col= c("black", "red", "blue"), legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
with(days, axis.POSIXct(1, at= c(min(DateTime), median(DateTime), max(DateTime)), labels= c("Thu", "Fri", "Sat")))

dev.off()