#read the prepare the data
data <- read.csv("~/R/R-coursera/household_power_consumption.txt", sep=";", na.strings="?")
data$Date <- as.Date.character(data$Date, format = "%d/%m/%Y")
data2 <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
times = paste(data2$Date, data2$Time, sep = " ")
data2$DateTime <- strptime(times, format = "%Y-%m-%d %H:%M:%S")

#chart n.3
plot(data2$DateTime, y = data2$Sub_metering_1, type = "n", xlab = "", ylab= "Energy sub metering")
lines(data2$DateTime, y = data2$Sub_metering_1, col = "black")
lines(data2$DateTime, y = data2$Sub_metering_3, col = "blue")
lines(data2$DateTime, y = data2$Sub_metering_2, col = "red")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)

