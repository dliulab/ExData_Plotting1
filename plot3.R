source("getdata.R")
## Plot 3
png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(x = data$Date_Time, y = data$Sub_metering_1, type = "n", 
    xlab = "", ylab = "Energy sub metering")
lines(x = data$Date_Time, y = data$Sub_metering_1)
lines(x = data$Date_Time, y = data$Sub_metering_2, col = "red")
lines(x = data$Date_Time, y = data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
    lty = 1, col = c("black", "red", "blue"))
dev.off()
