library(sqldf)
library(lubridate)

loadData<- function(){
dataFile <- file("household_power_consumption.txt") 
attr(dataFile, "file.format") <- list(sep = ";", header = TRUE) 

# use sqldf to read it in keeping only indicated rows 
dataFile.df <- sqldf("select * from dataFile where Date='1/2/2007' or Date='2/2/2007'") 
close.connection(dataFile)
# fix types 
dataFile.df$Date <- dmy(dataFile.df$Date) 
dataFile.df$Time <- hms(dataFile.df$Time)
dataFile.df[, 3:9] <- lapply(dataFile.df[, 3:9], as.numeric)

dataFile.df

##head(dataFile.df) 
}



dev.new<-function(width = 7, height = 7){
  dev.off()
  platform <- sessionInfo()$platform
  if (grepl("linux",platform)) 
  { x11(width=width, height=height) } 
  else if (grepl("pc",platform)) 
  { windows(width=width, height=height) } 
  else if (grepl("apple", platform)) 
  { quartz(width=width, height=height) } 
}

loadData()
dev.new()