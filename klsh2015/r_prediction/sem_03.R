x <- c(1,2)
x <- 1:2
x
y <- c(1000,1500)
les <- data.frame(pins=y, height=x)

les$height2 <- les$height^2 # вариант 1 возведения в квадрат
les$height2 <- x^2

les

model_B <- lm(data=les, pins~height)
summary(model_B)

model_A <- lm(data=les, pins~0+height)
summary(model_A)

model_C <- lm(data=les, pins~0+height2)
summary(model_C)

model_D <- lm(data=les, pins~height2)
summary(model_D)

nov_les <- data.frame(height=c(5,6), height2=c(25,36))
nov_les

predict(model_A, newdata = nov_les)
