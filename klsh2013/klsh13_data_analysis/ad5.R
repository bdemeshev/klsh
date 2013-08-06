
library(vcd)
library(erer)


h <- read.csv("/media/boris/SP UFD U2/klsh_choice.csv")



str(h)

summary(h$depart)
summary(h$team)
summary(h$class)
table(h$class)
summary(h$b_date)
str(h$b_date)
length(unique(h$b_date))
length(h$b_date)

summary(h$city)
summary(h$u2)
summary(h$u3)

summary(h$team)

library(vcd)

mosaic(data=h,~team+depart)

a<-unique(h$team)[-1]
a
b <- factor(c("f","f","m","f","m","f",
              "f","m","m","f","f","f",
              "f","m","f","m","m","m"))
team_sex <- data.frame(a,b)
names(team_sex) <- c("team","sex")

team_sex

hs <- merge(h,team_sex,by.x="team",by.y="team")

str(hs)
hss <- hs[,-c(12,13)]
str(hss)


mosaic(data=droplevels(subset(hss,sex=="m")),~team+depart)


mosaic(data=droplevels(subset(hss,sex=="f")),~class+depart)

mosaic(data=droplevels(hss),~sex+class+depart,shade=TRUE,highlighting="class")

table(hsss$class)
hsss <- droplevels(hss)

hsss[hsss$class==7,]

save(hsss,
     file="~/science/klsh/klsh2013/klsh13_data_analysis/klsh13.Rdata")

write.csv(h,file="~/science/klsh/klsh2013/klsh13_data_analysis/klsh13.csv")


mosaic(data=droplevels(subset(hss,sex=="m")),~depart+team)


mosaic(data=droplevels(hss),~depart+team)


?mosaic

qplot(data=hsss,class,facets=~depart+sex)
?qplot
k<-(168*48+178*56+156*47)/(48^2+56^2+47^2)
table(hsss$depart)/nrow(hsss)


subs <- subset(hsss,depart!="нон")
summary(subs$sex)/nrow(subs)