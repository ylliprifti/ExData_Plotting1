source("readData.R")

if(!exists("household"))
{
  household<-loadData()
}

par(mfrow = c(2,2), mar=c(4,5,2,1))

plot(household$Date + household$Time, household$Global_active_power, type = "l", xlab = '',   ylab = "Global Active Power (kilowats)")

with(household, plot(Date+Time, Voltage, type='l', xlab = 'datetime', ylab='Voltage'))

with(household, plot(Date+Time, Sub_metering_1, col = "black", xlab = "", ylab="Energy Sub Metering", type="l"))
with(household, lines(Date+Time,Sub_metering_2, col="red"))
with(household, lines(Date+Time,Sub_metering_3, col="blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),  cex = 0.75)

with(household, plot(Date+Time, Global_reactive_power, type='l', xlab = 'datetime', ylab='Global_reactive_power'))

par(mfrow = c(1,1), mar=c(0,0,0,0))