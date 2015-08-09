plotAll <- function()
{
	##Load all the R files to be run
	source("plot1.R")
	source("plot2.R")
	source("plot3.R")
	source("plot4.R")
	## Run them
	plot1()
	plot2()
	plot3()
	plot4()
}