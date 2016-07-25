source("readData.R")

if(!exists("household"))
{
  household<-loadData()
}

hist(household$Global_active_power, xlab = "Global Active Power (kilowats)", col="red", main = "Global Active Power")
