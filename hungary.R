setdir("homework/EU-regional-inequality/")

#getting data

data <- read.csv("name_r_e3gdp_1_Data.csv")

#extracting data about Slovakia

dataHr <- data[data$GEO == "Hungary",]

#plotting GDP data

plot(dataHr$TIME, dataHr$Value, type = "b", main = "GDP per Capita Hungary",
     xlab = "years", ylab = "GDP per capita")

#adding simple regression line

abline(lm(dataHr$Value ~ dataHr$TIME), col = "red")
