##load package
library(corrplot)
#Read the data set
setwd("C:/education/4 Sem/iim banglore conf")
data<-read.csv("creditcard.csv",header = T)
#correlation matrix
correlation <-cor(data,method = "pearson")
corrplot(correlation, number.cex = .9,method = "circle",type = "full",tl.cex=0.8,tl.col = "black")
#Most related factor
d<-data.frame(x1=data$detect,x2=data$V3)
g<-cor(d)
g
corrplot(g)
plot(data$detect~data$V11)
hist(g)
