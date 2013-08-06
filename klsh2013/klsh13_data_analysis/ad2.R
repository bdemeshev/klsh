
height <- c(182,168,156,157,162,172,182,170,160,
            168,185,177,178,184,175,153,160,175,
            177,171

age <- c(32,16,17,15,17,17,16,NA,17,15,17,
         17,17,17,15,16,16,17,17,18)

weight <- c(80,51,48,48,47,NA,79,NA,50,48,70,
            74,58,68,60,40,NA,55,70,57)

mean(height)
mean(age)

?mean

mean(age,na.rm=TRUE)

library(erer)

hm <- height/100
hm

qplot(age,height)

str(age)

qplot(age,   height,  
      xlab="Возраст (лет)",
      ylab="Рост (см)")

qplot(weight, binwidth=5,
      xlab="Вес (кг)", 
      ylab="Количество наблюдений")

a <- 5
A <- 6
a + A
qplot(WEIGHT)
Moe_lubimoe_chislo <- 15

Moe_lubimoe_chislo

moe_lubimoe_chislo

















