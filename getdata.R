## setwd("/home/dliu/Documents/Coursera/EDA/wk1")
if (!file.exists("data")) {
    dir.create("data")
}
if (!file.exists("data/household_power_consumption.txt")) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl, 
                  destfile = "data/exdata-data-household_power_consumption.zip", 
                  method = "curl",
                  mode="wb")
    dateDownloaded <- date()
    unzip("data/exdata-data-household_power_consumption.zip", exdir="data")  
}
list.files("data")

library(datasets)

data <- read.csv("data/household_power_consumption.txt", sep=";")
data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"), ]
data$Date_Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- data$Date <- as.Date(data$Date, "%d/%m/%y")
head(data$Time)
head(data$Date)

data$Global_active_power <- as.numeric(data$Global_active_power)

