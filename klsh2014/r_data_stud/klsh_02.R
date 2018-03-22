
setwd("~/Downloads/")
require("xlsx")

tt <- read.xlsx("knt2009.xls",sheetIndex = 1)
str(tt)
summary(tt$team)
tt$year <- 2009

tt$last_name <- as.character(tt$last_name)
tt$first_name <- as.character(tt$first_name)
str(tt)
tt2 <- read.xlsx("knt2011.xlsx",sheetIndex = 1)
str(tt2)
tt2[,6] <- NULL

tt2$last_name <- as.character(tt2$last_name)
tt2$first_name <- as.character(tt2$first_name)
tt2$mid_name <- as.character(tt2$mid_name)

tt2$year <- 2011
tail(tt2)

tt2[180:200,]

tt2 <- head(tt2,183)


str(tt2)
tail(tt2)
head(tt2)



require(dplyr)
ttt <- rbind_list(tt,tt2)
?rbind_all

str(ttt)

# 09ok, 10ok, 11ok, 12top_ind_top_comm, 13ok
t10 <- read.xlsx("knt2010.xlsx",sheetIndex = 1)
str(t10)

tail(t10,100)

t10 <- t10[1:176,]

str(unique(t10$last_name))

t10 %>% group_by(last_name,team) %>% summarise(n=n()) %>% filter(n>1)
str(t13m)

t10$id <- NULL

t10m <- melt(t10,id.vars = 1:2)

head(t10m)
colnames(t10m)[3] <- "st_name"
colnames(t10m)[4] <- "result"
t10m$year <- 2010
t10m$part <- "sum"

t10m$st_dep <- "нен"
unique(t10m$st_name)
t10m$last_name <- as.character(t10m$last_name)
t10m$st_name <- as.character(t10m$st_name)
t10m$st_name[t10m$st_name=="Повтор"] <- "повтор"

ntn <- unique(t10m$st_name)[1:6]
non <- unique(t10m$st_name)[7:13]
nfn <- unique(t10m$st_name)[14:18]

t10m$st_dep[t10m$st_name %in% ntn] <- "нтн"
t10m$st_dep[t10m$st_name %in% non] <- "нон"
t10m$st_dep[t10m$st_name %in% nfn] <- "нфн"
t10m$st_dep[t10m$st_name %in% "повтор"] <- "повтор"
head(t10m,1000)

# saveRDS(ttt,"knt_09_11_done.Rds") # obsolete
saveRDS(t901,"knt_09_11_12_done.Rds")
saveRDS(t13m,"knt_13_done.Rds")
saveRDS(t10m,"knt_10_done.Rds")
# saveRDS(t12i,"knt_12i_done.Rds") # obsolete
saveRDS(t12t,"knt_12t_done.Rds")

str(ttt)
tail(t10m)
st13 <- c("Физика теор & Астрономия",  "Физика экспериментальная",	"Оценки",
          "Алгоритмы",	"Мат. Игры",	"Математика",
          "Экономика",	"Право",	"Попади в историю",	"География",	"История",
          "Масляное масло",	"Аты-баты",	"Слово и буква",	"Генетика поговорок",
          "Эфебифобия",	"Теор. Химия",	"Экспер. Химия",	"Теор. Биология",
          "Экспер. Биология",	"Медицина",	"Второй заход")

t13 <- read.xlsx("knt13.xls",sheetIndex = 3)
str(t13)
library("reshape2")


colnames(t13)[26]
t13[,26] <- NULL
str(t13)

t13$last_name <- as.character(t13$last_name)
t13$first_name <- as.character(t13$first_name)
t13$first_name <- as.character(t13$first_name)

t13m <- melt(t13,id.vars = 1:3)
head(t13m)
t13m$year <- 2013
colnames(t13m)[5] <- "result"
compar <- readRDS("~/Documents/klsh/klsh2014/klsh_data/klsh_knt.Rds")
head(compar)
saveRDS(compar, "~/Documents/klsh/klsh2014/klsh_data/klsh_knt.Rds")
str(compar)

head(t13m)
str(t13m)
t13m$name <- paste(t13m$first_name,t13m$last_name)
t13m$part <- "sum"
head(t13m)
t13m$st_dep[1:1092] <- "нтн"
t13m$st_dep[1093:2002] <- "нон"
t13m$st_dep[2003:2912] <- "нфн"
str(t13m)
t13m$st_dep[2913:3822] <- "нен"
t13m$st_dep <- NA
t13m <- t13m[1:4002,]
tail(t13m)

tail(compar)
compar$st_name <- as.character(compar$st_name)
compar$st_name[compar$st_dep=="повтор"] <- "повтор"
tail(t13m)
t13m$st_name <- as.character(t13m$st_name)
t13m$st_name[t13m$st_name=="Второй.заход"] <- "повтор"
t13m$st_dep[t13m$st_name=="повтор"] <- "повтор"
tail(t13m)
t13m$year <- 2013

t12i <- read.xlsx("knt2012.xls",sheetIndex = 2)
t12t <- read.xlsx("knt2012.xls",sheetIndex = 1)
summary(t12i)
str(t12i)
tail(t12i)
t12i$last_name <- as.character(t12i$last_name)
t12i$first_name <- as.character(t12i$first_name)
t12i$team <- as.character(t12i$team)
t12i$team <- tolower(t12i$team)
str(t12i)
str(t12t)
t12t
t12t$team <- tolower(as.character(t12t$team))
t12t$year <- 2012
t12i$year <- 2012

str(ttt)
ttt$id <- NULL
str(t12i)
str(ttt)

t901 <- rbind_list(ttt,t12i)
str(t901)

# структура файлов

# название команды --- с маленькой буквы






