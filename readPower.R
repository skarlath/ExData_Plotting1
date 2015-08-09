readPower <- function()
{
	names <- strsplit(readLines(file("household_power_consumption.txt","r"), 1), ";")
	powerData <- read.table("household_power_consumption.txt", FALSE, sep = ";", skip=66637, nrows=2880)
	names(powerData) = names[[1]]
	powerData
}
