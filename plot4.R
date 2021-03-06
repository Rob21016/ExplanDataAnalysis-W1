setwd("~/Documents/Coursera_courses")
getwd()

# packages used
library(lubridate)
library(dplyr)

# download files for the assessment
unzip('./exdata_data_household_power_consumption.zip')

# generating the object containing the table
data <- read.table('./household_power_consumption.txt', sep=';', header=TRUE)

# checking what the variables are
str(data)

# formatting dates and times
data$Date <- dmy(data$Date)
data$Date_Time <- paste(data$Date, data$Time)
data$Date_Time <- ymd_hms(data$Date_Time)

# selecting only the days needed
data <- filter(data, Date_Time>='2007-02-01' & Date_Time<'2007-02-03')

# selecting and reorganising columns
data <- select(data, Date_Time, Global_active_power:Sub_metering_3)

# conversion factor to numeric
data$Global_active_power <- as.numeric(as.character(data$Global_active_power))
data$Global_reactive_power <- as.numeric(as.character(data$Global_reactive_power))
data$Voltage <- as.numeric(as.character(data$Voltage))
data$Global_intensity <- as.numeric(as.character(data$Global_intensity))
data$Sub_metering_1 <- as.numeric(as.character(data$Sub_metering_1))
data$Sub_metering_2 <- as.numeric(as.character(data$Sub_metering_2))

# verify the presence of missing values
anyNA(data)

# combined png document with 4 graphs
png(file='plot4.png', width = 480, height = 480, units = "px")
par(mfrow = c(2, 2), mar = c(5, 4, 4, 2))

plot(data$Date_Time, data$Global_active_power, xlab='', ylab='Global Active Power', type='l')

plot(data$Date_Time, data$Voltage, xlab='datetime', ylab='Voltage', type='l')

plot(data$Date_Time, data$Sub_metering_1, xlab='', ylab='Energy sub metering', type='l')
lines(data$Date_Time, data$Sub_metering_2, col='red')
lines(data$Date_Time, data$Sub_metering_3, col='blue')
legend('topright', legend=c('Sub_metering_1','Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty=1, bty='n')

plot(data$Date_Time, data$Global_reactive_power, xlab='datetime', ylab='Global_reactive_power', type='l')

dev.off()

