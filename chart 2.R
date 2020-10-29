#read the prepare the data
data <- read.csv("~/R/R-coursera/household_power_consumption.txt", sep=";", na.strings="?")
data$Date <- as.Date.character(data$Date, format = "%d/%m/%Y")
data2 <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")
times = paste(data2$Date, data2$Time, sep = " ")
data2$DateTime <- strptime(times, format = "%Y-%m-%d %H:%M:%S")

#chart n.2
plot(data2$DateTime, data2$Global_active_power, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(data2$DateTime, data2$Global_active_power)

