# Defining source for creating Plot 1. 

source("loadData.R")

#Creating Plot1


# Plotting on screen
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red", cex.sub=0.8)

# Export plot to png file

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()