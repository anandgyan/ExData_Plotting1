# Defining source for creating Plot 2. 

source("loadData.R")

# Creating Plot2

# Format Date and Time

data$Date <- as.Date(data$Date, format="%d/%m/%Y")
dateTime <- paste(data$Date, data$Time)
data$DateTime <- as.POSIXct(dateTime)

# Plotting on screen
plot(data$Global_active_power~data$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# Export plot to png file

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()