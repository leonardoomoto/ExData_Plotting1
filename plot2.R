household_power_consumption <- read.csv("C:/Users/Omoto/Desktop/household_power_consumption.txt", sep=";")

newData <- subset(household_power_consumption, as.Date(household_power_consumption$Date, format="%d/%m/%Y")=="2007-02-01" | as.Date(household_power_consumption$Date, format="%d/%m/%Y") == "2007-02-02")

datetime <- as.POSIXct(paste(newData$Date, newData$Time), format="%d/%m/%Y %H:%M:%S")
plot(datetime, as.numeric(sub(",", ".", newData$Global_active_power, fixed = TRUE)), ylab="Global Active Power (kilowatts)", xlab="", type="l")

png('plot2.png', width=480, height= 480)
plot(datetime, as.numeric(sub(",", ".", newData$Global_active_power, fixed = TRUE)), ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()

