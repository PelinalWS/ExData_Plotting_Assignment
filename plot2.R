data <- read.table("./household_power_consumption.txt", header= TRUE, sep= ";", na.strings = "?")
days <- data[((data$Date=="1/2/2007"|data$Date=="2/2/2007")),]
days$DateTime <- strptime(paste(days$Date, days$Time), format= "%d/%m/ %Y %H:%M:%S")

png(filename = "plot2.png", width= 480, height= 480)

with(days, plot(Global_active_power~DateTime, type= "l", ylab= "Global Active Power (kilowatts)", xaxt= "n"))
with(days, axis.POSIXct(1, at= c(min(DateTime), median(DateTime), max(DateTime)), labels= c("Thu", "Fri", "Sat")))

dev.off()
