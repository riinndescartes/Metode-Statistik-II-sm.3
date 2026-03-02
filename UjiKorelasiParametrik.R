#Membuat dataframe Hubungan dalam Basketball Player
df <- data.frame(team = c('A','A','A','A', 'B','B','B','B'), 
                 points= c(18,22,19,14,14,11,20,28),
                 assists = c(2,7,9,3,12,10,14,21))

#menampilkan dataframe
df 

#Menghitung Uji Korelasi Parametrik
#install.packages("dplyr")

library(dplyr)

df %>%
  group_by(team) %>%
  summarize(cor=cor(points, assists))

