# This is for reading the Power Consumption Data

consumption_full <- read.table("household_power_consumption.txt", header=TRUE, na.strings="?", sep=";")
plotData <- data_full[(data_full$Date=="1/2/2007" | data_full$Date=="2/2/2007" ), ]
