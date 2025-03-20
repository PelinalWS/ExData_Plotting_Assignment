data <- read.table("./household_power_consumption.txt", header= TRUE, sep= ";", na.strings = "?")
days <- data[((data$Date=="1/2/2007"|data$Date=="2/2/2007")),]
png(filename = "plot1.png", width= 480, height= 480)

hist(days$Global_active_power, main= "Global Active Power",xlab= "Global Active Power (kilowatts)", ylab= "Frequency", col= "red")

dev.off()