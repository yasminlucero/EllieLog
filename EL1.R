## EL1.R
## data processing script
## Sept 15 2012

setwd("~/Desktop/Dropbox/EllieLog/")
require(ggplot2)

Ellielog = read.csv("Ellielog.csv")
dates = seq(from=as.Date("2012-01-19"), to=as.Date("2012-09-11"), by="day")
Ellielog$Date=dates
Ellielog$nightSleep[80] = 9.75
Ellielog$daySleep[37] = 4.25
Ellielog$daySleep[38] = 4.25

qplot(Date, LSP, data=Ellielog, geom=c("point", "smooth"))
                                  

