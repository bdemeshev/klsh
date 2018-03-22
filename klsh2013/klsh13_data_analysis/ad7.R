load(file="~/science/klsh/klsh2013/klsh_clean.Rdata")
str(hh)
library(erer)
library(lubridate)
library(vcd)
hh <- na.omit(hh)
qplot(data=hh,
      sex,facets=~weekday)
qplot(data=hh,sex)
qplot(factor(weekday),data=hh)
mosaic(data=hh,
  ~sex+class+depart)
table(hh$sex)
qplot(data=hh,sex)

qplot(data=hh,factor(weekday),fill=sex,position="dodge")

library(vcd)

mosaic(data=hh,~weekday+sex,shade=TRUE)

str(hh)
qplot(data=hh,
      x=sex,fill=factor(class))
qplot(data=hh,
      x=sex,fill=factor(class),
      position="dodge")


