PowerData=read.table("~/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
PowerData=subset(PowerData,PowerData$Date=="1/2/2007" | PowerData$Date=="2/2/2007")
PowerData$DateAndTime=paste(PowerData$Date,PowerData$Time, sep="")
PowerData$DateAndTime=strptime(PowerData$DateAndTime,"%d/%m/%Y%H:%M:%S")
png("plot3.png")
plot(PowerData$DateAndTime,PowerData$Sub_metering_1,type='n', ylab="Energy sub metering",xlab='')
lines(PowerData$DateAndTime,PowerData$Sub_metering_1)
lines(PowerData$DateAndTime,PowerData$Sub_metering_2,col="red")
lines(PowerData$DateAndTime,PowerData$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid")
dev.off()