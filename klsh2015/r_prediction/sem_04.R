setwd("~/Documents/klsh/klsh2015/r_prediction")

rus_y <- read.csv("rus_yearly.csv")
rus_m <- read.csv("rus_monthly.csv")

head(rus_y) # начало таблички (вектора)
head(rus_m)
tail(rus_y) # конец таблички (вектора)

library("ggplot2")
library("lattice")
library("forecast")

qplot(data=rus_m, x=time_y, y=cpi)

qplot(data=rus_m, x=time_y, y=construction)

qplot(data=rus_m, x=time_y, y=construction,
      geom="line")


model_tr <- lm(data=rus_m, construction~time_y)
summary(model_tr)
tail(rus_m)
str(rus_m)
head(rus_m$time_y)

rus_m$time_y <- 1992 + (0:285)*1/12
model_tr <- lm(data=rus_m, construction~time_y)

nd <- data.frame(time_y = 2015+(5/12) + (0:11)*1/12)
predict(model_tr, newdata = nd)

