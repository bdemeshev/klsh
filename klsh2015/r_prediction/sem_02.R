setwd("~/Documents/klsh/klsh2015/r_prediction")

t <- 1:3
y <- c(10,15,13)

t
y

data <- data.frame(population=y, time=t)

data

model <- lm(data=data, population~time)
summary(model)

nd <- data.frame(time=c(4,15,20))
nd

predict(model, newdata=nd)

real <- read.csv("rus_yearly.csv")
real$POPNUM_Y
str(real)
head(real, 3)
tail(real)

real[10:13,1:3]

a <- 7
A <- 8
a
A

colnames(real)
colnames(real)[1] <- "naselenie"
colnames(real)
real$year <- 1991:2015
model_2 <- lm(data=real, naselenie~year)
summary(model_2)

nov_data <- data.frame(year=c(2016,2020))
nov_data

predict(model_2, newdata=nov_data)
