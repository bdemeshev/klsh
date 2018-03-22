setwd("~/Documents/klsh/klsh2015/r_prediction")

rus_y <- read.csv("rus_yearly.csv")
rus_m <- read.csv("rus_monthly.csv")

head(rus_y) # начало таблички (вектора)
head(rus_m)
tail(rus_y) # конец таблички (вектора)

library("ggplot2")
library("lattice")
library("forecast")

y <- rus_m$construction
y <- y[13:281]

y <- ts(y, frequency = 12, start = c(1993,1))
plot(y)

ses(y, h=12)

prognoz <- ses(y, h=12)
prognoz
plot(prognoz)

prognoz2 <- hw(y, h=12)
prognoz2
plot(prognoz2)


window(y, start=c(2010,1), end=c(2010,12))
