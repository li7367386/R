setwd('/Users/edward/Desktop/R檔案')
getwd()
air_rating <- read.csv('AirRating.csv',header=T,sep=',')
head(air_rating)

attach(air_rating)
air_rating.mean <- mean(Rating); air_rating.mean
air_rating.sd <- sd(Rating); air_rating.sd
## Calculate T statistics 
air_rating.T <- (air_rating.mean-7)/(air_rating.sd/sqrt(length(Rating))); air_rating.T
## Obtain the p-value of t-Test
1-pt(air_rating.T,df=length(Rating)-1)
detach(air_rating)
#優化
setwd('/Users/edward/Desktop/R檔案')
getwd()
air_rating <- read.csv('AirRating.csv',header=T,sep=',')
head(air_rating)

attach(air_rating)
t.test(x=Rating,mu=7,alternative='greater')
detach(air_rating)




