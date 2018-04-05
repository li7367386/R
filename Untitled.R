Bas.summary <- function(x){
  size <- length(x)
  xbar1 <- sum(x)/size
  c <- 0
  for(i in 1:size)
    {
    c <- c+x[i]
  }
  xbar2 <- c/size
  xvar1 <- sum((x-xbar1)^2)/(size-1)
  b <- 0
  for(i in 1:size)
  {
    b <- b+(x[i]-xbar2)^2
  }
  xvar2 <- b/(size-1)
  xsd1 <- sqrt(xvar1)
  xsd2 <- sqrt(xvar2)
  list(number=size,mean1=xbar1,mean2=xbar2,var1=xvar1,var2=xvar2,std1=xsd1,std2=xsd2)
}
Bas.summary(c(2,5,8,1,4,3,6,5))


uywedilucyieoruy



install.packages("ggplot2")
library("ggplot2")
library(xlsx)
source("http://wush978.github.io/R/init-swirl.R")
