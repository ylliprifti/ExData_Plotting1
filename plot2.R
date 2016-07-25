source("readData.R")

if(!exists("household"))
{
  household<-loadData()
}

plot(household$Date + household$Time, household$Global_active_power, type = "l", xlab = '',   ylab = "Global Active Power (kilowats)")
