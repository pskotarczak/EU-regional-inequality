setdir("homework/EU-regional-inequality/")

#getting data

data <- read.csv("name_r_e3gdp_1_Data.csv")

#extracting data about Slovakia

dataSl <- data[data$GEO == "Slovakia",]

#plotting GDP data

plot(dataSl$TIME, dataSl$Value, type = "b", main = "GDP per Capita Slovakia",
     xlab = "years", ylab = "GDP per capita")

#adding simple regression line

abline(lm(dataSl$Value ~ dataSl$TIME), col = "red")


