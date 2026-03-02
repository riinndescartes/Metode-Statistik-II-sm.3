# Load Data
?HairEyeColor
str(HairEyeColor)
HairEyeColor

# Get marginal frequencies for the eye colour
margin.table(HairEyeColor, 2)

# Save eye colour to data frame
eyes <- margin.table(HairEyeColor, 2)
eyes
round(prop.table(eyes), 2) # Show as proportion w/2 digits

# Save Pearson's Chi-squared test
# Need one dimensional goodness-of-fit test
# Default test (assume equal distribution)
chill <- chisq.test(eyes) # Save test as object "chill"
chill

# Compare to population distribution
# Population data from:
browseURL("http://www.statisticbrain.com/eye-color-distribution-percentages/")

# Approximate proportions:
# Brown: .41 (Combining Brown irises with Specks & Dark Brown irises)
# Blue: .32 (Blue / Grey irises)
# Hazel: .15 (Blue / Grey / Green irises with Brown / Yellow specks)
# Green: .12 (Green / light Brown irises with minimal specks)
# p = c(.41, .32, .15, .12)
chi2 <- chisq.test(eyes, p = c(.41, .32, .15, .12))
chi2

rm(list = ls())
