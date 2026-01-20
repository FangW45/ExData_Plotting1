> df <- read.table("data/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
> df$datetime <- as.POSIXct(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")
> sub <- df[df$datetime >= as.POSIXct("2007-02-01 00:00:00") & df$datetime < as.POSIXct("2007-02-03 00:00:00"),]
> sub$Global_active_power <- as.numeric(sub$Global_active_power)
> png("plot1.png", width = 480, height = 480)
> hist(sub$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
> dev.off()