setwd("~/Documents/klsh/klsh2014/")

require("xlsx")
require("reshape2")
require("ggplot2")

rost <- read.xlsx("rost_ves.xlsx",sheetIndex = 1)
str(rost)
knt <- read.xlsx("knt_sorted.xlsx",sheetIndex = 3)
str(knt)
colnames(knt)

knt$last_name <- as.character(knt$last_name)
knt$last_name[knt$last_name=="Трубчанова"] <- "Трубчанинова"


knt$name <- paste(knt$first_name,knt$last_name)
rost$name <- paste(rost$first_name,rost$last_name)


colnames(knt)[133]






head(rost_names)

knt <- knt[!knt$name=="Олег Дмитриев",]

df <- merge(knt,rost, 
            by.x = "name",
            by.y = "name")



dfc <- df[, -(135:142)] 
dput(colnames(dfc)[2:9])
colnames(dfc)[2:9] <- c("last_name", "first_name", "department", "school", 
                        "class", "birth", "city", "team")



colnames(dfc)
# 10,11,12,   14,15,16,   18,19,20,     126,127,128

primary_cols <- 10:128
primary_cols <- primary_cols[!primary_cols %in% seq(from=13,to=129,by=4)]

df2melt <- melt(data=dfc,id.vars = "name", measure.vars = primary_cols)

aa <- seq(from=1,to=22625,by=181)

16290/181/3

df2melt$part <- rep(c(rep(1,181),rep(2,181),rep(3,181)),30)

head(df2melt)
which(df2melt$part < df2melt$value)

df2melt[6533,]

df2melt$value[]

dn <- data.frame(fname = unique(dfc$first_name))
dn$male <- c(1,0,1,0,0,0,0,
             0,1,0,1,0,1,1,
             1,1,0,1,0,1,0,
             1,1,0,1,1,1,1,
             1,1,0,1,0,0,1,
             1,0,0,0,0,0,1,
             0,1,1,0,1,0,0,
             0,1,0,0,0,0,0,
             1,0,0,1,1,0,1,
             0,0,1,1,0,1,1,
             0,1,0,1,0,0,0,
             1,0,1,0,0,0)

saveRDS(object = dn,file = "name_sex.Rds")

dfc <- merge(dfc,dn,by.x = "first_name",by.y="fname")

head(df2melt,1000)
tail(df2melt,1000)
22625/181

df2melt$variable[aa]

colnames(dfc)
dfc <- dfc[,-(10:129)]
colnames(dfc)




qplot(data=ttt,x = height)

head(df2melt)

station.names.id <- seq(from=1,to=16290,by=181*3)
colnames(df2melt)[2] <- "station"
station.names <- as.character(df2melt$station[station.names.id])
str(df2melt)
station.names[1:3] <- c("ЭкспФиз","Информ","СистСчисл")
station.names
station.dep <- c(rep("нтн",9),rep("нен",7),rep("нон",6),rep("нфн",7),"повтор")
df2melt$st_name <- rep(station.names,each = 181*3)
df2melt$st_dep <- rep(station.dep,each = 181*3)


head(df2melt,1000)

head(df2melt)

df2melt$station <- NULL
colnames(df2melt)[2] <- "result"
head(df2melt)
head(dfc)

qplot(data=dfc,x = height)+facet_grid(male~department)

qplot(data=dfc,x=height,y=weight,colour=male)
str(dfc)

qplot(data=dfc,weight/height,sum)


qplot(data=dfc,x=height,fill=as.factor(male),geom="histogram",position="dodge")
str(dfc$height)
str(dfc$male)

dfc$name[dfc$height<50]
ttt[38,]
which(df2melt$name=="Анна Им")
df2melt[df2melt$name=="Анна Им",]

?diamonds
d <- diamonds

help("diamonds")
d$carat
d$cut

summary(dfc$name)
sum(is.na(dfc$name))

#qplot(data=diamonds,x=price,fill=cut,geom="histogram",position="dodge",
#      binwidth=3000)

saveRDS(object = dfc,file = "all_studs.Rds")
saveRDS(object = df2melt,file = "knt_results.Rds")

one_factor <- function(x,levels) {
  x[x %in% levels] <- levels[1]
  return(x)
}
dfc$f <- one_factor(dfc$f,c("java-кофе","Java-кофе"))
da <- dfc
str(da)

head(dfc$birth)
bir <- as.numeric(as.character(dfc$birth))
head(bir)
tb <- as.Date(as.POSIXct((bir-25569)*86400, tz="GMT", origin="1970-01-01"))
head(tb)
dfc$birth <- tb

str(dfc)

dput(levels(dfc$city))

dfc$city <- one_factor(dfc$city,c("Красноярск","г. Красноярск","красноярск"))
help("drop unused levels")
dfc$city <- one_factor(dfc$city,c("Железногорск","г. Железногорск"))
dfc$city <- one_factor(dfc$city,c("Москва","г. Москва"))

da <- dfc[,c("class","team","department", "sum_ntn","sum_nen","sum_non","sum_nfn","weight","height","male")]

summary(da)
da$male <- factor(da$male)

str(da)

da <- na.omit(da)


qplot(data=da,weight/(height/100)^2)

qplot(data=da,weight)


da$weight[da$weight/(da$height/100)^2>30] <- NA
dfc$name[dfc$weight>95] 

da$weight[da$weight>91] <- NA
summary(da)

summary(da)
saveRDS(file="klsh_anon.Rds",da)
getwd()
