#Load Data
?swiss
data(swiss)

#Correlations matrix for data frame
cor(swiss)
round(cor(swiss), 2) #rounded to 2 decimals

#can test one pair of variabels at a time
#Gives r, hypotesis test, and confidence interval
cor.test(swiss$Fertility, swiss$Education)


#install "Hmisc" package to get p values for matrix
install.packages("Hmisc")
install.packages("stringi")
install.packages("htmlwidgets")
require("Hmisc")

#need to coerce from data frame to matrix
#to get correlation matrix and p-values
rcorr(as.matrix(swiss))

#clean up
detach("package:Hmisc", unload = TRUE)
rm(list = ls())