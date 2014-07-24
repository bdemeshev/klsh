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



df <- merge(knt,rost, 
            by.x = "name",
            by.y = "name")

knt_names <- paste(knt$first_name,knt$last_name)
rost_names <- paste(rost$first_name,rost$last_name)
df_names <- paste(df$first_name,df$last_name)

head(rost_names)
knt_names[!knt_names %in% rost_names]
rost_names[!rost_names %in% knt_names]

which(knt$last_name=="Дмитриев")
knt[94,]
knt[177,]

df$department.y[63]


dfc <- df

colnames(dfc)
unique(df$name)



dfc <- df[, -(135:142)] 
dput(colnames(dfc)[2:9])
colnames(dfc)[2:9] <- c("last_name", "first_name", "department", "school", 
                        "class", "birth", "city", "team")



colnames(dfc)
10,11,12,   14,15,16,   18,19,20,     126,127,128

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

tt <- merge(dfc,dn,by.x = "first_name",by.y="fname")
colnames(tt)
head(dn)

head(df2melt,1000)
tail(df2melt,1000)
22625/181

df2melt$variable[aa]

colnames(tt)
ttt <- tt[,-(10:129)]
colnames(ttt)

head(ttt)

qplot(data=ttt,x = height)

head(df2melt)

station.names.id <- seq(from=1,to=16290,by=181*3)
colnames(df2melt)[2] <- "station"
station.names <- as.character(df2melt$station[station.names.id])
str(df2melt)
station.names[1:3] <- c("ЭкспФиз","Информ","СистСчисл")

