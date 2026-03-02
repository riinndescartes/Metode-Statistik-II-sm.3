#Uji Chi Square

#Creating crosstabs for categorical variabels

#Load data
?Titanic
str(Titanic)
Titanic
ftable(Titanic) #makes "flat" table


#Convert tble to data frame with one row per observation
tdf<-as.data.frame(lapply(as.data.frame.table(Titanic), function(x)rep(x, as.data.frame.table(Titanic)$Freq))) [,-5]
tdf[1:5, ] #check first five rows of data

#Create contingency
ttab <-table(tdf$Class, tdf$Survived)
ttab

#Call also get cell row, and column %
#with rounding to get just 2 decimals places
#Multiplied by 100 to make %
round(prop.table(ttab, 1),2)*100 #row %
round(prop.table(ttab, 2), 2)*100 #column %
round(prop.table(ttab),2)*100 #cell %

#Chi-squared test
tchi<-chisq.test(ttab)
tchi

#Additional tables
tchi$observed # observed frequencies (same as ttab)
tchi$expected # Expected frequencies
tchi$residuals #Pearson#s residual
tchi$stdres #Standariezed residual

rm(list=ls()) #Clean up