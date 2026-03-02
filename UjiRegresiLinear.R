#COMPUTING A BIVARIATE REGRESSION (REGRESI LINEAR)
#load data
?trees
data(trees)
trees[1:5, ] #show first 5 lines
#Quick graphical check on data
hist(trees$Height)
hist(trees$Girth)
plot(trees$Girth, trees$Height)
abline(lm(trees$Height ~ trees$Girth))


#LINEARREGRESSION MODEL
reg1 <- lm(Height ~ Girth, data = trees)
reg1
summary(reg1)

#CONFIDENCE INTERVALS FOR COEFFICIENTS
confint(reg1)

#PREDICT VALUES BASED IN REGRESSION EQUATION
predict(reg1) #prdicted height based on girth
predict(reg1, intervals = "prediction") #C1 For predicted height

#Regression diagnostics
lm.influence(reg1)
influence.measures(reg1)