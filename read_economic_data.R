economicData = read.csv(file="Datasets/datos_economicos/AMECO1.TXT", header = TRUE, sep=";")
economicData = economicData[,!names(economicData) %in% c("CODE", "SUB.CHAPTER","X","X2021")] 
names(economicData) <- gsub("X", "", names(economicData))
splitEconomicDataByTitle <- split(economicData, economicData$TITLE)
