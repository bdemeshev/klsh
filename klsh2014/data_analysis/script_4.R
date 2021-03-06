head(cars)
tail(cars)
help("cars")
cars$kph <- 1.609 * cars$speed
cars$m <- 0.3048 * cars$dist
head(cars)
mean(cars$kph)
max(cars$kph)
min(cars$kph)
median(cars$kph)
summary(cars$kph)
sort(cars$kph)
# ggggg

require("ggplot2")

qplot(data=cars,kph,binwidth=2.5,
      xlab="Скорость машины (км/ч)",
      ylab="Количество машин",
      main="Данные 1920х")

qplot(data=cars,kph,m)
qplot(data=cars,kph,m,
  xlab="Скорость машины (км/ч)",
  ylab="Длина тормозного пути (м)")

head(cars)


cars$sqrt <- sqrt(cars$kph)
cars$kph2 <- cars$kph^2

m2 <- lm(data=cars,m~kph)
summary(m2)

m3 <- lm(data=cars,m~sqrt)
summary(m3)

m4 <- lm(data=cars,m~kph+kph2)
summary(m4)

m1 <- lm(data=cars,m~0+kph)
summary(m1)

str(cars)
head(cars)

cars$pr1 <- predict(m1)
cars$pr2 <- predict(m2)
cars$pr3 <- predict(m3)
cars$pr4 <- predict(m4)

cars[2,1]
str(cars)
cars[10,]
2:7
cars[2:7,1:4]
cars[c(1,5,7),c(3,4,9,10)]

qplot(data=cars,x=kph,y=m,
      xlab="Скорость машины (км/ч)",
      ylab="Длина тормозного пути (м)") +
  geom_line(aes(y=pr1),colour="blue") +
  geom_line(aes(y=pr4),colour="red") 
  
deviance(m1)
deviance(m2)
deviance(m3)
deviance(m4)

cars$kph3 <- cars$kph^3
cars$kph4 <- cars$kph^4
cars$kph5 <- cars$kph^5
cars$kph6 <- cars$kph^6

m6 <- lm(data=cars,m~poly(kph,18))
deviance(m6)
cars$pr6 <- predict(m6)

qplot(data=cars,x=kph,y=m,
      xlab="Скорость машины (км/ч)",
      ylab="Длина тормозного пути (м)") +
  geom_line(aes(y=pr6),colour="red") 

new <- data.frame(kph = c(60,120))
new$kph2 <- new$kph^2
predict(m4,newdata = new)
predict(m6,newdata = new)

cars[51,] <- NA
tail(cars)
cars$kph[51] <- 60

require("plyr")
big <- rbind.fill(cars,new)
tail(big)

