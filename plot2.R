## R code for plot2

datetime <- strptime(paste(subsetHHPCdata$Date, subsetHHPCdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(subsetHHPCdata$Global_active_power)

png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()