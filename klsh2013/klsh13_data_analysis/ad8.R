library(erer)
library(GGally)

d <- swiss 
str(d)
?swiss

ggpairs(d)
plotmatrix(d)

head(d)

model.f <- 
  lm(data=d,
   Fertility~Catholic+Education+
       Agriculture+Infant.Mortality)
summary(model.f)

brontozavr <- lm(data=d,
     Fertility~
       Catholic+Education)
summary(brontozavr)

d2 <- diamonds
head(d2)
str(d2)

summary(d2$cut)
summary(d2$clarity)

?diamonds

qplot(data=d2,
    x=log(carat),y=log(price),
      color=cut)
