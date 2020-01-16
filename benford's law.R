##read data
setwd("C:/education/4 Sem/iim banglore conf")
data<-read.csv("creditcard.csv",header = T)
## about data
library(caret)
table(data$detect)
## benbford's analysis
library(benford.analysis)
bfd.cp <- benford(data$Amount)
plot(bfd.cp)
bfd.cp
suspects <- getSuspects(bfd.cp,data)
suspects
