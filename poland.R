setdir("homework/EU-regional-inequality/")

#getting data from csv file

data <- read.csv("name_r_e3gdp_1_Data.csv")

#extracting data about Poland

dataPL <- data[data$GEO == "Poland",]

#plotting GDP per capita

plot(dataPL$TIME, data$Value, type = "b", main = "GDP per capita by years",
     xlab = "years", ylab = "GDP per Capita")

#plotting simple regression line

abline(lm(dataPL$Value ~ dataPL$TIME), col = "red")

