a <- readRDS("~/Documents/klsh/klsh2014/klsh_anon.Rds")
a <- read.csv("c:/R/")
a <- read.csv("~/Documents/klsh/klsh2014/klsh_.csv")
head(a)

summary(a)

require(ggplot2)

qplot(data=a,x=sum_ntn,
      y=sum_nfn,
      colour=department,
      xlab="НТН",ylab="НФН")

table(a$team)

head(a)
tail(a)

?readRDS
write.csv(a,file="klsh_.csv")


alpha <- a[a$team=="альфа",]
alpha

qplot(data=b,x=height)

b <- a[a$height>0,]

b$male <- factor(b$male)
b <- na.omit(b)
qplot(data=b,x=height)+facet_grid(~male)
qplot(data=b,x=height,fill=male,
      position="dodge")


b$sum <- b$sum_ntn + b$sum_nen +
  b$sum_non + b$sum_nfn
qplot(data=b,x=jitter(class),y=sum)

m1 <- lm(data=b,sum~class+height+male)
summary(m1)

mean(b$sum_ntn)
mean(b$sum_nfn)


