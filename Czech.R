setdir("homework/EU-regional-inequality/")

#getting data

data <- read.csv("name_r_e3gdp_1_Data.csv")

#extracting Czech Republic data

dataCz <- data[data$GEO == "Czech Republic",]

#plotting data

plot(dataCz$TIME, dataCz$Value, type = "b", main = "GPD per capita by years",
     xlab = "years", ylab = "GDP per capita (TEUR)")

#adding simple regression line

abline(lm(dataCz$Value ~ dataCz$TIME), col = "red")

