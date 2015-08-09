plot1 <- function()
{
	source("readPower.R")
	dat <- readPower() ## get data
	png(filename="plot1.png") ## open file for saving image
	## Make the histogram, set the bars to red and label it
	hist(dat$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
	dev.off()
}