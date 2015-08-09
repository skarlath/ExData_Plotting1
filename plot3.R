plot3 <- function()
{
	source("readPower.R")
	dat <- readPower() ## Get Data
	png(filename="plot3.png") ## open image for saving
	##Open Plot and add first line
	plot(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Sub_metering_1, main="Sub Metering through time", xlab="", ylab="Energy Sub Metering", type="l", col="1")
	##Line two
	lines(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Sub_metering_2, type="l", col="Red")
	##Line three
	lines(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Sub_metering_3, type="l", col="Blue")
	##Add the legend
	legend( x="topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col= c("Black", "Red", "Blue"), lwd="1")
	dev.off()
}