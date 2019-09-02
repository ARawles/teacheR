untidy_data <- read_csv(file = "H:/R/Training/Modules/4_Tidyverse/untidy_data.csv")
untidy_data$settlement_date <- as.Date(untidy_data$settlement_date, format = "%d/%m/%Y")

tidy_data <- untidy_data %>% gather(gen_demand, mwh, consumption:generation)

tidy_data_grouped <- tidy_data %>% group_by(settlement_date, gen_demand) %>% summarise(mean_mwh = mean(mwh), mean_temp = mean(temp))

ggplot(data = tidy_data_grouped, aes(x = settlement_date, y = mean_mwh)) + geom_line(aes(color = gen_demand))

ggplot(data = tidy_data_grouped) + geom_point(aes(x = mean_mwh, y = mean_temp, color = gen_demand))
