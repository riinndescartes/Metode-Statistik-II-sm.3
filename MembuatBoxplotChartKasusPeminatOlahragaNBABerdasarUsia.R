# Set working directory to the location of your CSV file
setwd("C:/Users/Lenovo/Documents/Statistik/Metode Statistika II - Praktikum Laboratorium/Dokumen Source Tugas dan Hasil Tugas/SOURCE/PERTEMUAN 5/")

# Load the data from the CSV file
data <- read.csv("SearchData.csv")

# Find the age with the highest NBA interest
max_interest_age <- data$age[which.max(data$nba)]

# Boxplot for NBA interest based on age
boxplot(data$nba ~ data$age,
        col = "red",
        main = "Boxplot of NBA Interest by Age",
        xlab = "Age",
        ylab = "NBA Interest")

# Add annotation for the age with the highest NBA interest
text(max_interest_age, max(data$nba), labels = "Max Interest", pos = 3, col = "blue", cex = 1.2)

# Highlight the point with the highest NBA interest
points(max_interest_age, max(data$nba), col = "blue", pch = 16)
