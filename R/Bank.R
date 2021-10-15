#Bank is defined in this script in order to document it later

library(tidyverse)
Bank <- read.csv("bank2.csv")
# to generate 100 customer's arrival time and their service times
set.seed(2048)
x <- c(1:100)
arrival_time <- cumsum(rexp(100, 1/60))
service_time <- rexp(length(arrival_time), 1/150) + 20
Bank <- data.frame(x, arrival_time, service_time)
