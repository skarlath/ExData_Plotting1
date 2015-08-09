plot2 <- function()
{
	source("readPower.R")
	dat <- readPower() ## Get Data
	png(filename="plot2.png") ## Open image for saving
	## Combine Date + Time and plot over it
	plot(as.POSIXct(paste(dat$Date, dat$Time), format="%d/%m/%Y %H:%M:%S"), dat$Global_active_power, main="Global Active Power through time", xlab="", ylab="Global Active Power", type="l")
	dev.off()
}