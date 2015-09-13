source("getdata.R")

## Plot 1
png(filename = "plot1.png", width = 480, height = 480, units = "px")

with(
	data,
	hist(
		Global_active_power, 
		main = "Global Active Power", 
		xlab = "Global Active Power (kilowatts)", 
		ylab = "Frequency", 
		col = "red"
	)
)
dev.off()

