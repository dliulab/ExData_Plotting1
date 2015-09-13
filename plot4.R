source("getdata.R")
## Plot 4
png(filename = "plot4.png", width = 480, height = 480, units = "px")

	## Split the device into four plotting regions
	par(mfcol = c(2, 2))

	## Create the 'Global Active Power' vs 'Time' plot
	plot(x = data$Date_Time, y = data$Global_active_power, type = "l", 
    	xlab = "", ylab = "Global Active Power")
	
	## Create the 'Energy sub metering' vs 'Time' plot
	plot(x = data$Date_Time, y = data$Sub_metering_1, type = "n", 
    	xlab = "", ylab = "Energy sub metering")
	lines(x = data$Date_Time, y = data$Sub_metering_1)
	lines(x = data$Date_Time, y = data$Sub_metering_2, col = "red")
	lines(x = data$Date_Time, y = data$Sub_metering_3, col = "blue")
	legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
    	lty = 1, col = c("black", "red", "blue"), bty = "n")
	
	## Create the 'Voltage' vs 'Time' plot
	plot(x = data$Date_Time, y = data$Voltage, type = "l", xlab = "datetime", 
    	ylab = "Voltage")
	
	## Create the 'Global_reactive_power' vs 'Time' plot
	plot(x = data$Date_Time, y = data$Global_reactive_power, 
    	type = "l", xlab = "datetime", ylab = "Global Reactive Power")
dev.off()

