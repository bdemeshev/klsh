
x <- rep(15,8400)

y <- rep(c(1,2,3),6)

z <- 5:20
z

w <- runif(50) 
w

ww <- runif(50,20,30)
ww
?runif

mean(w)
min(w)
max(w)

v1 <- sample(1:6,5)
v1

?sample
v2 <- sample(1:6,50,replace=TRUE)
v2 <- sample(1:6,50,replace=NA)

sex <- c("Male","Female")
sex
v3 <- sample(sex,20,rep=TRUE)
v3

table(v3)

v2
v2[42]
v2[c(17,38,42)]
v2[5:15]
v1[-3]
v2[c(5:9,11:15)]
ira <- v2[v2>=3]
ira
ira[13]

which(v2>3)

v2[v2>3]
sofia <- v2[v2>3]
sofia
max(sofia)
6 -> a

?runif
h <- runif(150,min=160,max=180)
h <- runif(150,160,180)

w <- sample(50:70,150,rep=TRUE)

ttttt <- c(5,6,2,9.5)
ttttt
s <- sample(c("male","female"),150,rep=T)
zz <- data.frame(h,w,s)
zz

zz[4,2]
zz[4,]
zz[,1]

zz[4:10,]
zz$w
zz$w[3:5]

save(zz,
     file="~/science/klsh/klsh2013/klsh13_data_analysis/ad3.Rdata")

prod(341:365)/(365^25)

choose(52,5)

13*6*choose(12,3)*4^3/choose(52,5)


13*4*choose(12,2)*4^2/choose(52,5)
