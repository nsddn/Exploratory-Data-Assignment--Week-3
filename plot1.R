library(plyr)
library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

set.seed(12345)
##As a summary, all the data plots below is also represented in a single plot
NEI.reduced<-NEI[sample(nrow(NEI), 500), ]

aggregate.data<- with(NEI, aggregate(Emissions, by=list(year), sum))

## plot 


png(filename="plot1.png", width=480, height=480, units="px", pointsize=12, type="windows", antialias="none")

plot(aggregate.data, type= "o", ylab=expression("Total Emissions, PM"[2.5]), 
     xlab ="Year", main="Total Emissions in United States")

polygon(aggregate.data, col="green", border="blue")




