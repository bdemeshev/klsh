x <- 7:10
max(x)
x
x[2]
x[2:4]
x[-2]
x
z <- x[-2]

cars
help(cos)
help(cars)


b <- cars
b[3,1]

colnames(b)
b$speed

b$skorost <- 1.6 * b$speed
b$tormoz <- 0.3*b$dist
min(b$tormoz)
max(b$tormoz)
mean(b$tormoz)

b[7,]
d <- b[-5,]
