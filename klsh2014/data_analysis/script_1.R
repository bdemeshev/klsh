x <- 5
y <- 10
x + y
name <- c("Маша","Саша")
height <- c(160,180)
choco <- c(2,3)

d <- c(name,height,choco)
t <- data.frame(name,height,choco)
t
t$choco
t$profit <- t$choco * 50
t
t$name <- NULL
t
t$height[2] <- 183
t
Sys.time()
