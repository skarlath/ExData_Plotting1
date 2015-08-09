plot4 <- function()
{
	source("readPower.R")
	dat <- readPower() ## get data
	png(filename="plot4.png") ## open image for saving
	par(mfrow=c(2,2)) ## indicate we want to show 4 individual plots
	## Plot the first one
	plot(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Global_active_power, main="Global Active Power through time", xlab="", ylab="Global Active Power", type="l")
	## Plot block 2
	plot(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Voltage, main="Voltage through time", xlab="datetime", ylab="Voltage", type="l")
	## plot block 3 + Lines
	plot(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Sub_metering_1, main="Sub Metering through time", xlab="", ylab="Energy Sub Metering", type="l", col="1")
	lines(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Sub_metering_2, type="l", col="Red")
	lines(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Sub_metering_3, type="l", col="Blue")
	legend( x="topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col= c("Black", "Red", "Blue"), lwd="1")
	## plot block 4
	plot(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Global_reactive_power, main="Global Reactive Power through time", xlab="datetime", ylab="Global Reactive Power", type="l")
	dev.off() ## close and save
}