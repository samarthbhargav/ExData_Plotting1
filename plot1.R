
data<-read.table('household_power_consumption.txt', 
                 header=T, sep=";", 
                 colClasses = c("character", "character", "numeric", "numeric", 
                                "numeric", "numeric", "numeric", "numeric", "numeric"), 
                 na.strings = "?")

cleaneddata <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
png("plot1.png", width = 480, height = 480, bg="transparent")
hist(cleaneddata[,3], xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
dev.off()
