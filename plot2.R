data <- read.table("./household_power_consumption.txt", header= TRUE, sep= ";", na.strings = "?")
days <- data[((data$Date=='1/2/2007'|data$Date=='2/2/2007')),]
days$DateTime <- strptime(paste(days$Date, days$Time), format= "%d/%m/ %Y %H:%M:%S")
png(filename = 'plot2.png',width = 480, height = 480)
plot(x= days$DateTime, y= days$Global_active_power, type= 'l', xlab="", ylab= "Global Active Power (kilowatts)")
dev.off()
