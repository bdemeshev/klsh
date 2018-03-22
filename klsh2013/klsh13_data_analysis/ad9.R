library(erer)

x <- seq(from=0.01,to=10,
         by=0.01)
str(x)
tail(x)
y <- log(x)
qplot(x,y,geom="line")
print(exp(1),digits=22)
exp(1)

d <- diamonds
qplot(data=d,
      carat,price)
qplot(data=d,
      log(carat),
      log(price))
log(10)

h <- cars
str(h)
?cars

qplot(data=h,
      speed,dist)

mod1 <- lm(data=h,
      dist~speed)
summary(mod1)

-17.6+3.9*20

h$ln_dist <- log(h$dist)
h$ln_speed <- log(h$speed)
str(h)
qplot(data=h,
      ln_speed,ln_dist)

mod2 <- lm(data=h,
    ln_dist~ln_speed)
summary(mod2)
