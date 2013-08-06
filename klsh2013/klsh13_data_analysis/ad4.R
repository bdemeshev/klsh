
load("c:/ad/ad3.Rdata")
load("~/science/klsh/klsh2013/klsh13_data_analysis/ad3.Rdata")


?write.csv
write.csv(zz,
  file="c:/ad/ad4_data.csv")
write.csv(zz,
  file="~/science/klsh/klsh2013/klsh13_data_analysis/ad4_data.csv")

head(zz)
tail(zz)
str(zz)
summary(zz)

