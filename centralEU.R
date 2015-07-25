setdir("homework/EU-regional-inequality/")

#getting data

data <- read.csv("name_r_e3gdp_1_Data.csv")

#extracting data about central EU countries

dataAll <- data[,c("TIME", "GEO", "Value")]

dataAll <- dataAll[dataAll$GEO == "Poland" | dataAll$GEO == "Hungary" |
                     dataAll$GEO == "Slovakia" |
                         dataAll$GEO == "Czech Republic",]

#comparing data in a plot

plot(dataAll$TIME, dataAll$Value, col=dataALL$GEO)

