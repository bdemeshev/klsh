h <- read.csv("~/science/klsh/klsh2013/klsh13_data_analysis/klsh13_c.csv")

str(h)

h <- subset(h,select=-c(1))

str(h)

summary(h$depart)
summary(h$class)
table(h$class)

h$class[h$class==7] <- 8

str(h$birth)
head(h$birth)
library(lubridate)
library(erer)

h$birth <- as.Date(h$birth,format="%d.%m.%Y")
h$birth <- as.Date(h$birth,format="%Y-%m-%d")

h$year <- year(h$birth)
h$weekday <- wday(h$birth)

h$birth
h$year
table(h$weekday)
h$weekday

qplot(h$depart)
unique(h$u3)
unique(h$facult)

qplot(data=h,depart,facets=~team)

t <- unique(h$team)
t
sex <- c("f","f","m",
         "f","m","f",
         "f","m","m",
         "f","f","f",
         "f","m","f",
         "m","m","m")
teamsex <- data.frame(t,sex)
teamsex

sex

hh <- merge(h,teamsex,by.x="team",by.y="t")
str(hh)

save(hh,file="c:/ad/klsh_clean.Rdata")


