#母體比例
setwd("/Users/edward/Desktop/R檔案")
getwd()

Golfdata <- read.csv('Hypothesisp.csv',header=T,sep=',')
head(Golfdata)

attach(Golfdata)
p0 <- 0.2
p.bar <- length(Golfer[Golfer=='Female'])/length(Golfer); p.bar
p.sd <- sqrt(p0*(1-p0)/length(Golfer)); p.sd
z <- (p.bar-p0)/p.sd; z
1-pnorm(z)
pnorm(z,lower.tail = F)
detach(Golfdata)

#簡化
Golfdata <- read.csv('Hypothesisp.csv',header=T,sep=',')
head(Golfdata)

attach(Golfdata)
p0 <- 0.2
prop.test(x=length(Golfer[Golfer=='Female']),n=length(Golfer),p=p0,alternative='greater')
detach(Golfdata)

