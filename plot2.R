source("getdata.R")

## Plot 2
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(
    x = data$Date_Time,
    y = data$Global_active_power,
    type = "l", 
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
)
dev.off()

