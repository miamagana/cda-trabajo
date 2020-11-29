library(ggplot2);
ggplot(graphicData, aes(x=Year)) + geom_line(aes(y = `Temperature(ºC)`), color = "darkred") + geom_line(aes(y = `Rainfall(MM)`), color="steelblue") + geom_line(aes(y = carSales), color="green") + geom_line(aes(y = Employees), color="yellow") + geom_line(aes(y = GDP), color="orange") + xlab("Year") + ylab("Temperature ºC & Rainfall MM");
