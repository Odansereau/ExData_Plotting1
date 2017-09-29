hpd_data <- "./data/household_power_consumption.txt"
hpd <- read.table(hpd_data, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSethpd<- hpd[hpd$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subSethpd$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()