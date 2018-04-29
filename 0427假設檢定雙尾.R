#1
setwd('/Users/edward/Desktop/R檔案')
getwd()
orders <- read.csv('Orders.csv',header=T,sep=',')
head(orders)

attach(orders)
orders.mean <- mean(Units); orders.mean
orders.sd <- sd(Units); orders.sd
## Calculate T statistics 
orders.T <- (orders.mean-40)/(orders.sd/sqrt(length(Units))); orders.T
## Obtain the p-value of t-Test
2*pt(orders.T,df=length(Units)-1,lower.tail = T)
detach(orders)

#2
setwd('/Users/edward/Desktop/R檔案')
getwd()
orders <- read.csv('Orders.csv',header=T,sep='')
head(orders)

attach(orders)
t.test(x=Units,mu=40,alternative='two.sided')
detach(orders)

