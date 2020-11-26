library(dplyr);
library(ggplot2);
precip <- read.csv("./Datasets/spain_temp/pr_1991_2016_ESP.csv", header = TRUE, sep = ',');
precip <- precip[,!names(precip) %in% c("Statistics","ISO3")] 
precip <- precip %>% group_by(Year,Country) %>% summarise_all(mean)
temp <- read.csv("./Datasets/spain_temp/tas_1991_2016_ESP.csv", header = TRUE, sep = ',');
temp <- temp[,!names(temp) %in% c("Statistics","ISO3")];
temp <- temp %>% group_by(Year,Country) %>% summarise_all(mean);
weather <- weather <- left_join(precip,temp);
ggplot(weather, aes(x=weather$Year)) + geom_line(aes(y = weather$Temperature....Celsius.), color = "darkred") + geom_line(aes(y = weather$Rainfall....MM.), color="steelblue") + xlab("Year") + ylab("Temperature ºC & Rainfall MM");
