source("readData.R")

if(!exists("household"))
{
  household<-loadData()
}

  with(household, plot(Date+Time, Sub_metering_1, col = "black", xlab = "", ylab="Energy Sub Metering", type="l"))
  with(household, lines(Date+Time,Sub_metering_2, col="red"))
  with(household, lines(Date+Time,Sub_metering_3, col="blue"))
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"),  cex = 0.75)
