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



