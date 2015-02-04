PowerData=read.table("~/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
PowerData=subset(PowerData,PowerData$Date=="1/2/2007" | PowerData$Date=="2/2/2007")
PowerData$DateAndTime=paste(PowerData$Date,PowerData$Time, sep="")
PowerData$DateAndTime=strptime(PowerData$DateAndTime,"%d/%m/%Y%H:%M:%S")

png("plot1.png")
hist(PowerData$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()