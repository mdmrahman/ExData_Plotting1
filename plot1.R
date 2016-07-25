## R code for plot1:

dataFile <- "D:/ExploratoryDataAnalysis/Data/household_power_consumption.txt"
hhpowerConsumptionData <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetHHPCdata <- hhpowerConsumptionData[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subsetHHPCdata$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()