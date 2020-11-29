library(dplyr);
precip <- read.csv("./Datasets/spain_temp/pr_1991_2016_ESP.csv", header = TRUE, sep = ',');
precip <- precip[,!names(precip) %in% c("Statistics","ISO3")] 
precip <- precip %>% group_by(Year,Country) %>% summarise_all(mean)
temp <- read.csv("./Datasets/spain_temp/tas_1991_2016_ESP.csv", header = TRUE, sep = ',');
temp <- temp[,!names(temp) %in% c("Statistics","ISO3")];
temp <- temp %>% group_by(Year,Country) %>% summarise_all(mean);
weather <- weather <- left_join(precip,temp);
weather$Country <- trimws(toupper(weather$Country), which = c("both"));
weather <- as.data.frame(weather);
names(weather) <- c("Year", "Country", "Rainfall(MM)","Temperature(ºC)");
