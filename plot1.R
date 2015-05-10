household_power_consumption <- read.csv("C:/Users/Omoto/Desktop/household_power_consumption.txt", sep=";")

newData <- subset(household_power_consumption, as.Date(household_power_consumption$Date, format="%d/%m/%Y")=="2007-02-01" | as.Date(household_power_consumption$Date, format="%d/%m/%Y") == "2007-02-02")
hist(as.numeric(sub(",", ".", newData$Global_active_power, fixed = TRUE)), col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

png('plot1.png', width=480, height= 480)
hist(as.numeric(sub(",", ".", newData$Global_active_power, fixed = TRUE)), col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()




