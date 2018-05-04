#卡方檢定
setwd("/Users/edward/Desktop/R檔案")
getwd()
#單個類比變數
# MandM <- read.csv("MandM.csv",header = T,sep = ",")
# head(MandM)
# 
# attach(MandM)
# MandM.table <- table(MandM)
# chisq.test(x=MandM.table)
# MandM.table
# chisq.test(x=MandM.table, p=c(1/6,1/6,1/6,1/6,1/6,1/6))
# detach(MandM)

#兩個類比變數
skin <- read.csv('skin.csv', header=T, sep=',')
head(skin)
attach(skin)
crosstab <- table(treatment,success)
chisq.test(x=crosstab)

#exercise
BothWork <- read.csv('BothWork.csv', header=T, sep=',')
head(BothWork)
attach(BothWork)
crosstab <- table(Location,In.Workforce)
chisq.test(x=crosstab)
