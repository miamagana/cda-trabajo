carSales <- readxl::read_xlsx("./Datasets/datos_vehiculos_nuevos/total_sales_2019.xlsx", skip = 5,col_names = TRUE)
carSales = carSales[,!names(carSales) %in% c("...2", "...3","...4")]

