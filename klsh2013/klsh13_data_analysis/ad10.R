# занятие 10
library(erer)
d <- cars
qplot(data=d,speed,dist)

m1 <- lm(data=d,dist~speed)
m2 <- lm(data=d,
  log(dist)~log(speed))
str(m1)

m1$fitted.values

qplot(d$dist,
      m1$fitted.values)
qplot(d$dist,
      exp(m2$fitted.values))
summary(d$speed)

tarakan <- data.frame(
  speed=c(3,15,26))

tarakan
summary(m2)

predict(m1,tarakan)
exp(predict(m2,tarakan))

k <- Orange
str(k)

qplot(data=k,
    x=age,y=circumference,
      color=Tree)
?Orange

mod.ap <- lm(data=k,
             circumference~age)

new.data <- data.frame(
  age=365)

predict(mod.ap,new.data)
summary(mod.ap)

mod.s <- lm(data=k,
      circumference~1)
summary(mod.s)


deviance(mod.ap)
deviance(mod.s)
summary(mod.s)
summary(mod.ap)
str(k)
head(k)

