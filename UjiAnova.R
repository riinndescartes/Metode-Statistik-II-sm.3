# UJI ANOVA

# Comparing means with ANOVA

# Load data
# Each group in a separate variable
x1 <- rnorm(30, mean = 40, sd = 8)
x2 <- rnorm(30, mean = 41, sd = 8)
x3 <- rnorm(30, mean = 45, sd = 8)
x4 <- rnorm(30, mean = 45, sd = 8)

# Formula result is F(3,116) = 3.24, p = 0.025
boxplot(x1, x2, x3, x4) # Quick graphical check

# Combine vectors into a single data frame
xdf <- data.frame(cbind(x1, x2, x3, x4))
summary(xdf)

# Conduct one-way ANOVA
anova1 <- aov(cbind(x1, x2, x3, x4))
summary(anova1)

# Post-hoc comparisons
TukeyHSD(anova1)
?pairwise.t.test # Other post-hoc test
?p.adjust # Specific method

rm(list = ls()) # Clean up
