setwd('/Users/edward/Desktop/R檔案')
getwd()
CompTime <- read.csv('Matched.csv',header=T,sep=',')
head(CompTime)

attach(CompTime)
Method.d <- Method_1-Method_2; Method.d
Method.dbar <- mean(Method.d); Method.dbar
Method.dsd <- sd(Method.d); Method.dsd
Method.T <- Method.dbar/(Method.dsd/sqrt(length(Method_1))); Method.T
2*(1-pt(Method.T,df=length(Method_1)-1))
2*(pt(Method.T,df=length(Method_1)-1,lower.tail = F))   #寫法不同答案一樣

detach(CompTime)
