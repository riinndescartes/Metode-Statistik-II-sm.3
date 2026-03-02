# Load data

?quakes
quakes[1:5, ] # see the first 5 lines of the data
mag <- quakes$mag # Just load the magnitude variable 
mag[1:5] # first 5 lines

# Use t-test for one sample
# Default t-test(compares mean to 0)
t.test(mag)

# One-sided t-test w/mu = 4
t.test(mag, alt = "greater", mu = 4)

rm(list = ls())