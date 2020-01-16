##required library
library(caret)
## read data
setwd("C:/education/4 Sem/iim banglore conf")
x<-read.csv("creditcard.csv",header=T)
##Initializing the factor
table(x$detect)
ggplot(x, aes(detect, fill="salmon")) + geom_bar()

