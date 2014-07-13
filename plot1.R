function(){#opening the file
        data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
		data <- as.data.table(data) #reading the data
		good <- (data$"Date" == "1/2/2007") | (data$"Date" == "2/2/2007")
		data <- data[good]
		png(file = "plot1.png", width = 480, height = 480) #saving in png format
        par(bg = "transparent")
		hist(as.numeric(data$Global_active_power), col = "red", xlab = "Global Active Power (Kilowatts)", main = "Global Active Power") # drawing the graph
        dev.copy(png,file="plot1.png")
		dev.off()
 }
 